import SwiftUI

struct AppListView: View {
    let apps: [AppEntry]
    
    var body: some View {
        List(apps) { app in
            HStack {
                Text(app.name)
                Spacer()
                Text(app.path)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView(apps: [])
    }
}
