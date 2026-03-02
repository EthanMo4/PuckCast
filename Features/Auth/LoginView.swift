import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appState: AppState

    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("PuckCast")
                .font(.largeTitle)
                .bold()
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder())
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder())
            Button("Login") {
                appState.login(username: username, password: password)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(appState.themeColor)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}