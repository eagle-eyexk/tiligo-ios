# TiliGo iOS

Native iOS app for TiliGo — Kosovo's #1 delivery platform.

## Stack
- **Capacitor 7** wrapping https://tiligo-delivery-flow.base44.app
- Built & published via **Codemagic CI/CD**
- Signing: `signing/` folder (keep private)

## Build
1. `npm install`
2. `npx cap add ios`
3. `npx cap sync ios`
4. Open `ios/App/App.xcworkspace` in Xcode
5. Or push to `main` → Codemagic auto-builds to TestFlight

## App Info
- Bundle ID: `com.tiligo.tilgo`
- Team ID: `H4QUDPK7S3`
- Provisioning: TiliGo Cert
