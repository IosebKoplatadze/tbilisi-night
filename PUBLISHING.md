# Publishing Tbilisi Night to VS Code Marketplace

This guide will walk you through publishing your theme extension to the VS Code Marketplace.

## Prerequisites

1. **Microsoft Account** - You'll need a Microsoft account (can use GitHub account)
2. **Personal Access Token (PAT)** - Required for authentication
3. **Publisher Account** - Create one on the marketplace
4. **vsce tool** - VS Code Extension Manager

## Step 1: Install vsce

Install the VS Code Extension Manager globally:

```bash
npm install -g @vscode/vsce
```

## Step 2: Create a Publisher Account

1. Go to [Visual Studio Marketplace](https://marketplace.visualstudio.com/manage)
2. Sign in with your Microsoft account (or GitHub account)
3. Click **"Create Publisher"**
4. Fill in:
   - **Publisher ID**: Choose a unique ID (e.g., `yourname` or `yourcompany`)
     - This will be used in your `package.json` as the `publisher` field
     - Must be lowercase, alphanumeric, and hyphens only
     - Cannot be changed later
   - **Publisher Name**: Your display name
   - **Email**: Your email address
5. Click **"Create"**

## Step 3: Get a Personal Access Token (PAT)

1. Go to [Azure DevOps](https://dev.azure.com)
2. Sign in with the same Microsoft account
3. Click on your profile picture (top right) → **Security**
4. Click **"Personal access tokens"** → **"New Token"**
5. Configure:
   - **Name**: "VS Code Marketplace Publishing"
   - **Organization**: Select your organization (or create one if needed)
   - **Expiration**: Choose duration (or custom)
   - **Scopes**: Select **"Custom defined"** → **"Marketplace"** → **"Manage"**
6. Click **"Create"**
7. **Copy the token immediately** (you won't see it again!)

## Step 4: Update package.json

Update the following fields in `package.json`:

- `publisher`: Your Publisher ID from Step 2
- `author`: Your name
- `repository.url`: Your GitHub repository URL (if you have one)
- `homepage`: Your extension's homepage (optional)
- `bugs`: URL to your issues page (optional)

Example:
```json
{
  "publisher": "yourpublisherid",
  "author": "Your Name",
  "repository": {
    "type": "git",
    "url": "https://github.com/yourusername/tbilisi-night"
  },
  "homepage": "https://github.com/yourusername/tbilisi-night#readme",
  "bugs": {
    "url": "https://github.com/yourusername/tbilisi-night/issues"
  }
}
```

## Step 5: Package the Extension

Test packaging first (creates a .vsix file):

```bash
cd /Users/ioseb.koplatadze/repos/tbilisi-night
vsce package
```

This will:
- Validate your `package.json`
- Create a `tbilisi-night-1.0.0.vsix` file
- Show any warnings or errors

**Fix any errors before proceeding!**

## Step 6: Publish to Marketplace

### First Time Publishing

```bash
vsce publish
```

You'll be prompted for:
- **Personal Access Token**: Paste the token from Step 3
- The token will be saved for future use

### Updating an Existing Extension

```bash
vsce publish
```

Or specify a version:
```bash
vsce publish minor  # 1.0.0 -> 1.1.0
vsce publish patch  # 1.0.0 -> 1.0.1
vsce publish major  # 1.0.0 -> 2.0.0
```

## Step 7: Verify Publication

1. Go to [Visual Studio Marketplace](https://marketplace.visualstudio.com/vscode)
2. Search for "Tbilisi Night"
3. Your extension should appear within a few minutes

## Troubleshooting

### "Publisher not found"
- Make sure you've created the publisher account
- Verify the `publisher` field in `package.json` matches your Publisher ID exactly

### "Invalid Personal Access Token"
- Generate a new token
- Make sure it has "Marketplace" → "Manage" scope
- Token might have expired

### "Extension name already exists"
- The extension ID (`publisher.extension-name`) must be unique
- Change the `name` field in `package.json` or use a different publisher ID

### "Missing required fields"
- Ensure `publisher`, `name`, `version`, `displayName`, and `description` are set
- Check that `engines.vscode` is specified

## Version Management

After publishing, update the version in `package.json` before publishing again:

```json
{
  "version": "1.0.1"  // Increment this
}
```

Or use vsce to auto-increment:
```bash
vsce publish patch  # Auto-increments patch version
```

## Additional Resources

- [VS Code Extension Publishing Guide](https://code.visualstudio.com/api/working-with-extensions/publishing-extension)
- [vsce Documentation](https://github.com/microsoft/vscode-vsce)
- [Marketplace Management Portal](https://marketplace.visualstudio.com/manage)

## Quick Checklist

- [ ] Installed vsce (`npm install -g @vscode/vsce`)
- [ ] Created Publisher account
- [ ] Generated Personal Access Token with Marketplace/Manage scope
- [ ] Updated `package.json` with your publisher ID and info
- [ ] Tested packaging (`vsce package`)
- [ ] Published (`vsce publish`)
- [ ] Verified extension appears on marketplace

Good luck! 🚀


