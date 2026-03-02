import SwiftUI

struct MainView: View{
    @EnvironmentObject var appstate: AppState

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome, \(appstate.currentUser?.username ?? "")"")
                    .font(.title)
                Text("Favourite Team: \(appstate.currentUser?.favouriteTeam.displayName ?? "")"")

                if appstate.currentUser?.role == .admin {
                    Text("Admin Panel")
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Button("Logout") {
                    appstate.logout()
                }
                .padding()
                .background(appstate.themeColor)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .navigationTitle("Home")
        }
    }
}