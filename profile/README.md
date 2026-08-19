# FlagStack

**Source-available feature management built for developers.**

FlagStack is building a self-hostable feature flag platform with a focus on excellent SDKs, local evaluation, resilient configuration delivery, OpenFeature compatibility and predictable operating costs.

> FlagStack is currently in early development and is not yet ready for production use.

## Repositories

| Repository | Purpose |
| --- | --- |
| [`flagstack`](https://github.com/flagstack/flagstack) | Main source-available FlagStack application |
| [`sdk-python`](https://github.com/flagstack/sdk-python) | Official Python SDK |
| [`sdk-js`](https://github.com/flagstack/sdk-js) | Official JavaScript / TypeScript SDKs |
| [`sdk-go`](https://github.com/flagstack/sdk-go) | Official Go SDK |
| [`sdk-dotnet`](https://github.com/flagstack/sdk-dotnet) | Official .NET SDK |

## What we're building

FlagStack aims to provide:

- organisations, projects and environments;
- feature flags with environment-specific configuration;
- fast local evaluation inside SDKs;
- real-time configuration updates;
- resilient behaviour when the FlagStack service is temporarily unavailable;
- first-class self-hosting;
- OpenFeature compatibility;
- an optional managed FlagStack Cloud service.

## Self-hosting and licensing

The self-hosted version of FlagStack is intended to be a genuinely useful product in its own right.

The FlagStack core is source-available under the Elastic License 2.0. It may be self-hosted and modified subject to that licence, while the licence restricts offering FlagStack itself as a competing hosted or managed service.

Official FlagStack SDKs are licensed under the Apache License 2.0 so applications can integrate them without inheriting the core server's source-available licence.

FlagStack Cloud will focus on the value of managed hosting, operations, convenience, and support rather than deliberately crippling the self-hosted product.

Development is just getting started.
