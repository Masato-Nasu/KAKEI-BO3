# KAKEI-BO3 デプロイ手順

Cloudflare Pages へデプロイする場合は、ZIPを展開してから以下を実行してください。

## 1. ZIPをDesktopに展開

フォルダ名が以下になるようにします。

```text
Desktop\KAKEI-BO3-main
```

## 2. PowerShellで移動

```powershell
cd "$env:USERPROFILE\Desktop\KAKEI-BO3-main"
```

## 3. Cloudflare Pagesへデプロイ

```powershell
npx wrangler pages deploy . --project-name kakei-bo3
```

初回だけログインを求められる場合があります。その場合は以下を実行して、ブラウザでログインしてから、もう一度デプロイしてください。

```powershell
npx wrangler login
npx wrangler pages deploy . --project-name kakei-bo3
```

## 公開URL

```text
https://kakei-bo3.pages.dev/
```

## メモ

- `functions/api/analyze.js` が入っているので、フォルダ全体をそのままデプロイしてください。
- OpenAI APIキーはアプリ内の設定画面から入力します。
- 既存の `kakei-bo3` に再デプロイすると、同じURLで最新版に更新されます。
