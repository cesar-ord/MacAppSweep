import SwiftUI

struct ContentView: View {
    @StateObject private var finder = AppFinder()
    
    var body: some View {
        AppListView(apps: finder.apps)
            .onAppear {
                finder.loadApps()
            }
            .frame(minWidth: 400, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
