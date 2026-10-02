import AppCore
import SwiftUI

@main
struct MacOSAppFirstApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @StateObject private var model = CounterModel()

    var body: some Scene {
        WindowGroup("MacOSAppFirst") {
            ContentView(model: model)
        }
        .windowResizability(.contentSize)

        Settings {
            SettingsView()
        }
    }
}

/// Launched with `swift run`, the binary is not inside an .app bundle, so
/// macOS treats it as a background process. Make it a regular app with a
/// Dock icon and bring its window to the front.
final class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.regular)
        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}
