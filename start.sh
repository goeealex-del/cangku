#!/bin/sh
echo "UUID=$UUID"
sed -i "s/PASTE_YOUR_UUID_HERE/$UUID/g" config.json
echo "===== config.json ====="
cat config.json
echo "======================="
sing-box run -c config.json &
cloudflared tunnel --no-autoupdate run --token "$ARGO_TOKEN"
