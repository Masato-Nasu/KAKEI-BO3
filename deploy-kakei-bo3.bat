@echo off
cd /d "%~dp0"
npx wrangler pages deploy . --project-name kakei-bo3
pause
