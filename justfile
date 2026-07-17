set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

run-node:
    npx --yes serve . --listen 3000
