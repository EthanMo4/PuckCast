import SwiftUI

class AppState: ObservableObject {
    @Published var isAuthenticated: Bool = false
    @Published var: currentUser: User? = nil
    @Published var: themeColor: Color = .blue

    func login(username: String, password: String) {
        // Mock authentication logic
        if username == "admin" && password == "admin" {
            let user = User(username: "admin", email: "admin@puckcast.com", favouriteTeam: .canadiens, role: .admin)
            currentUser = user
            themeColor = user.favouriteTeam.primaryColor
            isAuthenticated = true
        }

        if username == "user" && password == "password" {
            let user = User(username: "user", email: "user@puckcast.com", favouriteTeam: .oilers, role: .user)
            currentUser = user
            themeColor = user.favouriteTeam.primaryColor
            isAuthenticated = true
        }
    func logout() {
        currentUser = nil
        themeColor = .blue
        isAuthenticated = false
    }    
}