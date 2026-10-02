import AppCore
import SwiftUI

struct ContentView: View {
    @ObservedObject var model: CounterModel
    @AppStorage("showGreeting") private var showGreeting = true

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "macwindow")
                .font(.system(size: 48))
                .foregroundStyle(.tint)

            if showGreeting {
                Text(model.greeting)
                    .font(.largeTitle)

                TextField("Your name", text: $model.name)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 240)

                Divider()
            }

            Text("Count: \(model.count)")
                .font(.title2)
                .monospacedDigit()

            HStack {
                Button("−", action: model.decrement)
                    .keyboardShortcut("-", modifiers: .command)
                Button("Reset", action: model.reset)
                    .disabled(model.count == 0)
                Button("+", action: model.increment)
                    .keyboardShortcut("=", modifiers: .command)
            }
            .controlSize(.large)
        }
        .padding(32)
        .frame(minWidth: 360, minHeight: 320)
    }
}

#Preview {
    ContentView(model: CounterModel(name: "Ada", count: 3))
}
