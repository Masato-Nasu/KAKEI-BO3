# KAKEI-BO3 Cloudflare Pages deploy script
# Run this file from PowerShell after extracting the ZIP.

Set-Location $PSScriptRoot
npx wrangler pages deploy . --project-name kakei-bo3
