import SwiftUI

struct SettingsView: View {
    @AppStorage("showGreeting") private var showGreeting = true

    var body: some View {
        Form {
            Toggle("Show greeting", isOn: $showGreeting)
        }
        .padding(20)
        .frame(width: 320)
    }
}
