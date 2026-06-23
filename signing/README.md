# TiliGo Signing Assets

Place your Apple signing files here:
- `TiliGo_Distribution.p12` — Apple Distribution certificate
- `TiliGo_AppStore.mobileprovision` — App Store provisioning profile

These files are loaded by `codemagic.yaml` during CI/CD builds.

> **Important:** Never commit actual .p12 or .mobileprovision files to a public repo.
> Use Codemagic's secure environment variables or the Files section to inject them.
