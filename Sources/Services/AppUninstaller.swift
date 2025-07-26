import Foundation

struct AppUninstaller {
    func uninstall(app: AppEntry) throws {
        let url = URL(fileURLWithPath: app.path)
        try FileManager.default.trashItem(at: url, resultingItemURL: nil)
        // TODO: remove related Library, Caches, Preferences
    }
}
