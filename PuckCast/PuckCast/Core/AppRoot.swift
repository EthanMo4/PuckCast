import SwiftUI

struct AppRootView: View {
    @EnvironmentObject private var appState: AppState

    var body: some View {
        Group {
            if appState.isAuthenticated {
                MainView()
            } else {
                LoginView()
            }
        }
        .environmentObject(appState)
    }
}