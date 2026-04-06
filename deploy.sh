#!/bin/bash
# Deploy AMADEUS Prep site to GitHub Pages
# Usage: ./deploy.sh
set -e

echo "🛫 Building AMADEUS GDS Prep site..."

# Check Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo not found. Install: brew install hugo (macOS) or snap install hugo (Linux)"
    exit 1
fi

# Build
hugo --minify

echo "✅ Site built to ./docs/"
echo ""
echo "To deploy to GitHub Pages:"
echo "  1. Push this repo to GitHub"
echo "  2. Go to Settings > Pages"
echo "  3. Set Source to 'Deploy from a branch'"
echo "  4. Set Branch to 'main' and folder to '/docs'"
echo "  5. Save — site will be live in ~2 minutes"
echo ""
echo "Or use gh-pages branch:"
echo "  git subtree push --prefix docs origin gh-pages"
echo ""
echo "🛬 Done!"
