# Feature Definitions & User Stories

---

## 🔍 App Listing

**As a user**, I want to see all installed apps so I can choose which ones to remove.

- [ ] Read `/Applications` and `~/Applications`
- [ ] Show icon, name, size, path

---

## 🧹 Uninstall App

**As a user**, I want to remove apps and their related files.

- [ ] Move `.app` to Trash
- [ ] Remove related `Library`, `Caches`, and `Preferences` files
- [ ] Handle permissions (e.g., prompt for `admin` if required)
- [ ] Show success/failure confirmation

---

## 🧲 Drag-and-Drop

**As a user**, I want to drag an app into the window and uninstall it.

- [ ] Support dragging `.app` files into UI
- [ ] Show animation during drop
- [ ] Prompt for confirmation before uninstall

---

## 🧪 Dry Run Mode

**As a cautious user**, I want to preview what will be deleted.

- [ ] Toggle dry run mode in settings
- [ ] Log all file paths that *would* be removed

---

## 🛑 Protected App Handling

- [ ] Block uninstalling system-protected apps
- [ ] Graceful error handling for sandboxed apps
