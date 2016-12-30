# Versioning

Use [Semantic Versioning (SemVer)](http://semver.org/) when a project can become a dependency
for other projets.

When a project is target toward end users, prefer SemVer too but you can use an additional _marketing_ version
if the feature version (semver) gets too complex. If you use a marketing version, make sure that the semver version
is still accessible if needed.

For open source projects, the first published version should be `0.1.0`. `1.0.0` means that the library is stalbe or feature complete.
For commercial projects, `1.0.0` is the first version ready to be sold.

When publishing a pre-release, use 0-indexed tags named `alpha`, `beta` and `rc` ("release candidate").

## Example of progression

- `0.1.0`
- `0.1.1`
- `0.2.0`
- `1.0.0-alpha.0`
- `1.0.0-alpha.1`
- `1.0.0-beta.0`
- `1.0.0-rc.0`
- `1.0.0-rc.1`
- `1.0.0-rc.2`
- `1.0.0`
- `1.0.1`
- `1.0.2`
- `1.0.3`

## Example for tools

- _npm_, _node_: `package.json`
- _pip_, _python_
- _cargo_, _rust_
- _maven_, _java_
