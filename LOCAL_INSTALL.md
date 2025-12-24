# Installing Tbilisi Night Theme Locally in Cursor

There are several ways to use this theme locally in Cursor without publishing it to the marketplace.

## Method 1: Direct Folder Installation (Recommended)

This is the easiest method for local development:

1. **Find Cursor's extensions directory:**
   - On macOS: `~/.cursor/extensions/`
   - On Linux: `~/.cursor/extensions/`
   - On Windows: `%USERPROFILE%\.cursor\extensions\`

2. **Create a symlink or copy the extension:**
   
   **Option A - Symlink (keeps files in sync):**
   ```bash
   ln -s /Users/ioseb.koplatadze/repos/tbilisi-night ~/.cursor/extensions/tbilisi-night
   ```
   
   **Option B - Copy (standalone):**
   ```bash
   cp -r /Users/ioseb.koplatadze/repos/tbilisi-night ~/.cursor/extensions/tbilisi-night
   ```

3. **Reload Cursor:**
   - Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
   - Type "Developer: Reload Window" and press Enter

4. **Activate the theme:**
   - Press `Cmd+K Cmd+T` (Mac) or `Ctrl+K Ctrl+T` (Windows/Linux)
   - Select "Tbilisi Night"

## Method 2: Package and Install as .vsix

1. **Install vsce (VS Code Extension Manager):**
   ```bash
   npm install -g @vscode/vsce
   ```

2. **Package the extension:**
   ```bash
   cd /Users/ioseb.koplatadze/repos/tbilisi-night
   vsce package
   ```
   This creates a `tbilisi-night-1.0.0.vsix` file.

3. **Install in Cursor:**
   - Open Cursor
   - Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
   - Type "Extensions: Install from VSIX..."
   - Select the `tbilisi-night-1.0.0.vsix` file

4. **Activate the theme:**
   - Press `Cmd+K Cmd+T` (Mac) or `Ctrl+K Ctrl+T` (Windows/Linux)
   - Select "Tbilisi Night"

## Method 3: Extension Development Host (For Testing)

This method is great for testing changes in real-time:

1. **Open the extension folder in Cursor:**
   ```bash
   cursor /Users/ioseb.koplatadze/repos/tbilisi-night
   ```

2. **Press F5** to launch an Extension Development Host window

3. **In the new window:**
   - Go to File > Preferences > Color Theme
   - Select "Tbilisi Night"

4. **Make changes:**
   - Edit the theme file
   - Press `Cmd+R` (Mac) or `Ctrl+R` (Windows/Linux) in the Extension Development Host window to reload

## Quick Setup Script

Run this command to quickly set up Method 1 (symlink):

```bash
ln -s "$(pwd)" ~/.cursor/extensions/tbilisi-night && echo "Theme installed! Reload Cursor and select 'Tbilisi Night' theme."
```

## Troubleshooting

- **Theme not showing up:** Make sure the `package.json` is valid and the theme path is correct
- **Changes not applying:** Reload Cursor window after making changes
- **Permission errors:** Make sure you have write access to `~/.cursor/extensions/`


