# Contributing to Switch On Your Code

Thanks for taking the time to contribute to Switch On Your Code.

Switch On Your Code is still in early development, so some project structure and APIs will change as the platform settles. Small, focused contributions are especially valuable at this stage.

## Before you start

- Search existing issues and pull requests before starting duplicate work.
- Bug fixes and small improvements can usually be submitted directly.
- Please open an issue before beginning a substantial feature, architectural change, public API change, or cross-repository change so the approach can be discussed first.
- Never include credentials, tokens, customer data, private keys, or other secrets in issues, commits, tests, or pull requests.

## Branches and history

Switch On Your Code keeps a linear Git history.

Create a branch from the latest `main` branch and keep it current by rebasing:

```bash
git fetch origin
git rebase origin/main
```

Do not merge `main` into your feature branch.

Pull requests are integrated using **rebase only**. Switch On Your Code does not use merge commits or squash merges.

Keep commits small and coherent. A commit should represent one understandable change and should leave the repository in a sensible state.

## Commit messages

Commit titles follow this format:

```text
[optional-scope: ]Capitalised imperative summary.
```

Rules:

- The title must be 76 characters or fewer.
- An optional scope may be used and must be lowercase, followed by `: `.
- Start the summary with a capital letter.
- Use imperative mood: `Add`, `Fix`, `Remove`, `Update`, `Refactor`, not `Added` or `Fixed`.
- End the title with a full stop.
- Leave the second line blank before an optional longer body.
- Keep each commit focused on one coherent change.

Examples:

```text
backend: Add project environment validation.
frontend: Fix flag state hydration.
docs: Update local development instructions.
Remove unused configuration loader.
```

Avoid vague messages such as `Updates.`, `Fix stuff.`, or `WIP.`.

## Pull requests

A good pull request should:

- solve one focused problem;
- explain what changed and why;
- include or update tests when behaviour changes;
- update documentation when public behaviour, configuration, or APIs change;
- pass the repository's formatter, linter, tests, and other CI checks;
- contain commit messages that follow the rules above;
- be rebased onto the latest `main` before it is ready to integrate.

Maintainers may ask for a large pull request to be split into smaller changes.

Do not rewrite another contributor's commits without coordinating with them.

## Rebase workflow

Before asking for final review:

```bash
git fetch origin
git rebase origin/main
git push --force-with-lease
```

Use `--force-with-lease`, not an unrestricted force push.

Once approved, the pull request will be integrated by rebasing its commits onto `main`. It will not be merged with a merge commit and it will not be squash-merged.

## Testing and quality

Each repository documents its own development commands. As the repositories are scaffolded, their READMEs will contain the exact formatter, linter, test, and build commands.

New behaviour should normally include tests. Bug fixes should include a regression test where practical.

## Contributor Licence Agreement

External contributions are accepted subject to the Switch On Your Code Contributor Licence Agreement (CLA).

Contributors retain copyright in their contributions. The CLA grants Switch On Your Code the rights needed to use, modify, distribute, sublicense, and relicense accepted contributions as part of the project.

The signing workflow will be documented before external contributions are merged.

## Licensing

The main Switch On Your Code server is source-available under the Elastic License 2.0. Official client SDKs are licensed under the Apache License 2.0. Contributions are made under the licence applicable to the repository in which they are submitted, together with the CLA described above.

## Code of Conduct

Participation in Switch On Your Code community spaces is governed by the Switch On Your Code Code of Conduct.

## Security issues

Do not report suspected security vulnerabilities in a public issue. Follow the instructions in `SECURITY.md` instead.
