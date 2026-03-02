import SwiftUI

struct User {
    let username: String
    let email: String
    let favouriteTeam: NHLTeam
    let role: UserRole
}

enum UserRole {
    case admin
    case user
}