#!/bin/bash

set -e

echo "== TiliGo iOS Capacitor Setup =="

# ensure base tools
npm init -y >/dev/null 2>&1 || true

npm install @capacitor/core @capacitor/cli @capacitor/ios typescript

# init capacitor if missing
if [ ! -f capacitor.config.ts ] && [ ! -f capacitor.config.json ]; then
  npx cap init TiliGo com.tiligo.tilgo
fi

# force correct config
cat > capacitor.config.ts << 'INNER'
const config = {
  appId: "com.tiligo.tilgo",
  appName: "TiliGo",
  webDir: "www",
  server: {
    url: "https://tili-goo.base44.app",
    cleartext: false
  }
};

export default config;
INNER

# web fallback folder (required)
mkdir -p www
echo "<html><body>TiliGo</body></html>" > www/index.html

# add iOS platform
if [ ! -d ios ]; then
  npx cap add ios
fi

# sync project
npx cap sync ios

echo "== DONE =="
echo "NEXT: npx cap open ios"
