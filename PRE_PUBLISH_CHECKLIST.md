# Pre-Publish Checklist

Before publishing to the marketplace, make sure to update these fields in `package.json`:

## Required Updates

- [ ] **Publisher ID** - Replace `"yourpublishername"` with your actual publisher ID
  - Get it from: https://marketplace.visualstudio.com/manage
  - Must be lowercase, alphanumeric, and hyphens only
  - Example: `"publisher": "iosebkoplatadze"`

- [ ] **Author** - Replace `"Your Name"` with your name
  - Example: `"author": "Ioseb Koplatadze"`

- [ ] **Repository URL** - Update if you have a GitHub repo
  - Replace `"https://github.com/yourusername/tbilisi-night"`
  - Example: `"url": "https://github.com/iosebkoplatadze/tbilisi-night"`

## Optional but Recommended

- [ ] **Homepage** - Add if you have one
  ```json
  "homepage": "https://github.com/yourusername/tbilisi-night#readme"
  ```

- [ ] **Bugs** - Add issues URL
  ```json
  "bugs": {
    "url": "https://github.com/yourusername/tbilisi-night/issues"
  }
  ```

- [ ] **Icon** - Add an icon (128x128 PNG) in the root directory
  - Add to package.json: `"icon": "icon.png"`

- [ ] **Gallery Banner** - Add a banner (1280x320 PNG)
  - Add to package.json: `"galleryBanner": { "color": "#1a1625", "theme": "dark" }`

## Quick Edit Command

You can edit package.json directly:
```bash
code package.json  # or cursor package.json
```

Or use the publish helper script which will check these:
```bash
./publish.sh
```

## After Updates

1. Test package: `vsce package`
2. Verify no errors
3. Publish: `vsce publish`


