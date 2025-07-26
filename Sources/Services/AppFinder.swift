import Foundation
import SwiftUI

class AppFinder: ObservableObject {
    @Published var apps: [AppEntry] = []
    
    func loadApps() {
        let applicationPaths = ["/Applications", "\(NSHomeDirectory())/Applications"]
        var found: [AppEntry] = []
        for path in applicationPaths {
            guard let contents = try? FileManager.default.contentsOfDirectory(atPath: path) else { continue }
            for item in contents where item.hasSuffix(".app") {
                let fullPath = (path as NSString).appendingPathComponent(item)
                let entry = AppEntry(name: item.replacingOccurrences(of: ".app", with: ""), path: fullPath)
                found.append(entry)
            }
        }
        DispatchQueue.main.async {
            self.apps = found.sorted { $0.name < $1.name }
        }
    }
}
