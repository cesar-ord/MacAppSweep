# Architecture Overview

## 🎯 Goals
- Native macOS experience (not Electron)
- Safe, testable uninstall logic
- Modular Swift codebase

---

## 📁 App Structure

```
MacUninstallerApp/
├── AppDelegate.swift
├── ContentView.swift
├── Views/
│   └── AppListView.swift
│   └── UninstallButton.swift
├── Models/
│   └── AppEntry.swift
├── Services/
│   └── AppFinder.swift
│   └── AppUninstaller.swift
```

---

## 📦 Dependencies
- No external libraries to start
- Optionally use:
  - `Sparkle` (for auto-updates)
  - `create-dmg` (for packaging)
  - `SwiftLog` or custom logging wrapper

---

## 🔐 Security

- Will use Apple sandbox rules and protect against:
  - Deleting critical system files
  - Root escalation (unless explicitly granted)

---

## 🚀 DMG Distribution
- Signed with Developer ID
- Notarized with Apple Tools
- Created using `create-dmg` or Xcode exporter
