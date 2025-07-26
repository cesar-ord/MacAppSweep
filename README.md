# Mac Uninstaller (Swift/SwiftUI) 🧹

A simple, native macOS application that helps you uninstall applications completely — including their leftover files.

### 🚀 Features
- List all installed apps (System & User)
- Drag-and-drop `.app` files to uninstall
- Remove associated files in `Library`, `Caches`, etc.
- Modern macOS UI using SwiftUI
- Signed and distributed as a `.dmg`

### 💻 Built With
- Swift 5
- SwiftUI
- AppKit for file system integration

### 📦 Download
[Releases](https://github.com/your-org/mac-uninstaller/releases)

---

### 🛠 Local Development

```bash
git clone https://github.com/your-org/mac-uninstaller.git
open mac-uninstaller.xcodeproj
```

Once the project opens in Xcode you can run the application with `Cmd + R` and
execute the unit tests using `Cmd + U`.

### 🚀 Build & Package

1. In Xcode choose **Product -> Archive** to produce a release build.
2. Install [`create-dmg`](https://github.com/create-dmg/create-dmg) via Homebrew:
   `brew install create-dmg`.
3. Generate a distributable `.dmg`:

   ```bash
   create-dmg "build/MacUninstaller.app"
   ```

The resulting disk image can be shared with users on macOS 13 or later.

### 🧪 Tests

```bash
Cmd + U in Xcode
```

---

### 📄 License
MIT License — feel free to fork or contribute!
