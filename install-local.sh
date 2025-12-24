#!/bin/bash

# Quick install script for Tbilisi Night themes (Dark & Light) in Cursor

EXTENSION_DIR="$HOME/.cursor/extensions"
THEME_DIR="$EXTENSION_DIR/tbilisi-night"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🎨 Installing Tbilisi Night themes (Dark & Light) locally in Cursor..."

# Create extensions directory if it doesn't exist
mkdir -p "$EXTENSION_DIR"

# Remove existing symlink/copy if it exists
if [ -L "$THEME_DIR" ] || [ -d "$THEME_DIR" ]; then
    echo "⚠️  Removing existing installation..."
    rm -rf "$THEME_DIR"
fi

# Create symlink
echo "📦 Creating symlink..."
ln -s "$CURRENT_DIR" "$THEME_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Themes installed successfully!"
    echo ""
    echo "Next steps:"
    echo "1. Reload Cursor window (Cmd+Shift+P → 'Developer: Reload Window')"
    echo "2. Select theme (Cmd+K Cmd+T):"
    echo "   - 'Tbilisi Night' (Dark theme)"
    echo "   - 'Tbilisi Night Light' (Light theme)"
    echo ""
    echo "To uninstall, run: rm -rf $THEME_DIR"
else
    echo "❌ Installation failed!"
    exit 1
fi


