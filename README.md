# Tbilisi Night

A dark theme for Visual Studio Code inspired by the warm, atmospheric nights of Tbilisi. This theme features a rich color palette with deep purples, warm oranges, and soothing blues that create a comfortable coding environment for those late-night sessions.

## Features

- 🌙 Dark, eye-friendly color scheme
- 🎨 Carefully crafted syntax highlighting
- 🏙️ Warm color palette inspired by Tbilisi nights
- ✨ Optimized for readability and aesthetics

## Color Palette

The theme uses a carefully selected color palette:

- **Background**: Deep purple-black (`#1a1625`)
- **Foreground**: Soft lavender-white (`#e8e3f0`)
- **Accent**: Warm orange (`#ff8c42`)
- **Strings**: Fresh green (`#7fb069`)
- **Keywords**: Soft purple (`#b88bc7`)
- **Functions**: Sky blue (`#6b9bd1`)
- **Classes**: Warm amber (`#ffb366`)

## Installation

### Quick Local Install (Cursor/VS Code)

**Easiest method - run the install script:**
```bash
./install-local.sh
```

Then reload Cursor and select the theme (see Usage below).

**Or manually:**
```bash
ln -s "$(pwd)" ~/.cursor/extensions/tbilisi-night
```

Then reload Cursor window (`Cmd+Shift+P` → "Developer: Reload Window").

### From VS Code Marketplace

1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X / Cmd+Shift+X)
3. Search for "Tbilisi Night"
4. Click Install

### Manual Installation

1. Clone this repository
2. Open VS Code
3. Press `F1` or `Ctrl+Shift+P` (Mac: `Cmd+Shift+P`)
4. Type "Extensions: Install from VSIX..." or "Developer: Install Extension from Location..."
5. Select the extension folder

### From Source (Development Mode)

1. Clone this repository
2. Open the folder in VS Code/Cursor
3. Press `F5` to run the extension in a new Extension Development Host window
4. In the new window, go to File > Preferences > Color Theme > Tbilisi Night

For more detailed local installation instructions, see [LOCAL_INSTALL.md](./LOCAL_INSTALL.md).

## Usage

After installation:

1. Press `Ctrl+K Ctrl+T` (Mac: `Cmd+K Cmd+T`) to open the theme selector
2. Select "Tbilisi Night" from the list

Or:

1. Go to File > Preferences > Color Theme
2. Select "Tbilisi Night"

## Screenshots

_Add screenshots of your theme here_

## Publishing to Marketplace

Want to publish this theme to the VS Code Marketplace? See [PUBLISHING.md](./PUBLISHING.md) for a complete guide.

Quick steps:
1. Install vsce: `npm install -g @vscode/vsce`
2. Create a publisher account at [marketplace.visualstudio.com](https://marketplace.visualstudio.com/manage)
3. Update `package.json` with your publisher ID and info
4. Run `./publish.sh` or `vsce publish`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - feel free to use this theme however you'd like!

## Credits

Inspired by the beautiful nights of Tbilisi, Georgia.

