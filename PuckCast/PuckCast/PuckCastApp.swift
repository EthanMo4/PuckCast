import SwiftUI

@main
struct PuckCastApp: App {
    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environmentObject(appState)
        }
    }
}