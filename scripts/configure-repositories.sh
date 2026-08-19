#!/usr/bin/env bash

set -euo pipefail

ORG="flagstack"

if ! command -v gh >/dev/null 2>&1; then
    echo "GitHub CLI (gh) is required." >&2
    exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
    echo "GitHub CLI is not authenticated. Run 'gh auth login' first." >&2
    exit 1
fi

configure_repository() {
    local repo="$1"
    local full_repo="${ORG}/${repo}"

    echo "Configuring ${full_repo}..."

    # FlagStack keeps a linear history and integrates pull requests by rebase only.
    gh api \
        --method PATCH \
        "repos/${full_repo}" \
        -F allow_merge_commit=false \
        -F allow_squash_merge=false \
        -F allow_rebase_merge=true

    # Protect main while allowing repository administrators to bypass the rule
    # during early development. Pull requests are required for non-admin changes,
    # but no approving review is required yet. CI requirements can be added once
    # stable checks exist for each repository.
    if ! gh api \
        --method PUT \
        "repos/${full_repo}/branches/main/protection" \
        --input - <<'JSON'
{
  "required_status_checks": null,
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": false,
    "require_code_owner_reviews": false,
    "required_approving_review_count": 0,
    "require_last_push_approval": false
  },
  "restrictions": null,
  "required_linear_history": true,
  "allow_force_pushes": false,
  "allow_deletions": false,
  "block_creations": false,
  "required_conversation_resolution": true,
  "lock_branch": false,
  "allow_fork_syncing": false
}
JSON
    then
        echo "WARNING: Could not protect main for ${full_repo}." >&2
        echo "Private-repository branch protection may require an eligible GitHub plan." >&2
    fi
}

while IFS= read -r repo; do
    configure_repository "$repo"
done < <(
    gh repo list "$ORG" \
        --limit 100 \
        --json name,isArchived \
        --jq '.[] | select(.isArchived == false) | .name'
)

echo "FlagStack repository settings configured."
