#!/bin/bash

# Publishing helper script for Tbilisi Night theme

set -e

echo "🎨 Tbilisi Night - Publishing Helper"
echo "===================================="
echo ""

# Check if vsce is installed
if ! command -v vsce &> /dev/null; then
    echo "❌ vsce is not installed!"
    echo ""
    echo "Install it with:"
    echo "  npm install -g @vscode/vsce"
    echo ""
    exit 1
fi

echo "✅ vsce is installed"
echo ""

# Check package.json for required fields
echo "📋 Checking package.json..."

PUBLISHER=$(node -p "require('./package.json').publisher" 2>/dev/null || echo "")
AUTHOR=$(node -p "require('./package.json').author" 2>/dev/null || echo "")

if [ "$PUBLISHER" == "yourpublishername" ] || [ -z "$PUBLISHER" ]; then
    echo "⚠️  Warning: Publisher is not set or still has placeholder value"
    echo "   Please update 'publisher' field in package.json"
    echo ""
fi

if [ "$AUTHOR" == "Your Name" ] || [ -z "$AUTHOR" ]; then
    echo "⚠️  Warning: Author is not set or still has placeholder value"
    echo "   Please update 'author' field in package.json"
    echo ""
fi

echo ""
echo "What would you like to do?"
echo ""
echo "1) Package extension (create .vsix file)"
echo "2) Publish to marketplace"
echo "3) Check package.json configuration"
echo "4) Exit"
echo ""
read -p "Enter choice [1-4]: " choice

case $choice in
    1)
        echo ""
        echo "📦 Packaging extension..."
        vsce package
        echo ""
        echo "✅ Package created! Check for .vsix file in current directory"
        ;;
    2)
        echo ""
        echo "🚀 Publishing to marketplace..."
        echo ""
        echo "You'll be prompted for your Personal Access Token."
        echo "Get it from: https://dev.azure.com → Security → Personal access tokens"
        echo ""
        read -p "Press Enter to continue or Ctrl+C to cancel..."
        vsce publish
        echo ""
        echo "✅ Published! Check marketplace in a few minutes:"
        echo "   https://marketplace.visualstudio.com/vscode"
        ;;
    3)
        echo ""
        echo "📄 Current package.json configuration:"
        echo ""
        node -p "JSON.stringify({
            name: require('./package.json').name,
            publisher: require('./package.json').publisher,
            version: require('./package.json').version,
            displayName: require('./package.json').displayName,
            author: require('./package.json').author
        }, null, 2)"
        echo ""
        ;;
    4)
        echo "👋 Goodbye!"
        exit 0
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac


