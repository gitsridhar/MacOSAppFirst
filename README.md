# MacOSAppFirst

A basic macOS application built with SwiftUI. The window greets you by name
and has a simple counter; a Settings window is available from the app menu
(⌘,).

## Requirements

- macOS 13 Ventura or later
- Xcode 15 or later (or a Swift 5.9 toolchain)

## Run it

From Terminal:

```sh
swift run
```

Or in Xcode: open `Package.swift`, pick the **MacOSAppFirst** scheme with
**My Mac** as the destination, and press ⌘R.

## Test it

```sh
swift test
```

## Layout

- `Sources/MacOSAppFirst` — the SwiftUI app: entry point, main window, settings.
- `Sources/AppCore` — app state (`CounterModel`), kept separate so it can be unit tested.
- `Tests/AppCoreTests` — unit tests for `AppCore`.
