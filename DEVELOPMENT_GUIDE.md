# Development Guide

## 🧰 Requirements
- macOS 13 or later
- Xcode 15+
- Swift 5.9+

---

## ▶️ Getting Started

```bash
git clone https://github.com/your-org/mac-uninstaller.git
cd mac-uninstaller
open mac-uninstaller.xcodeproj
```

---

## 🧪 Testing

- Use `Cmd + U` in Xcode to run unit tests
- All uninstall logic is tested via mocks

---

## 🚀 Build and Package

1. Archive in Xcode (`Cmd + B`)
2. Create `.dmg`:
   ```bash
   brew install create-dmg
   create-dmg 'build/MacUninstaller.app' ...
   ```

---

## 💡 Contributing

1. Fork repo
2. Create a new branch
3. Open PR with description
4. Respect the architecture and style

We use [Conventional Commits](https://www.conventionalcommits.org/) for PR titles.
