import SwiftUI
import AVFoundation

@main
struct MendeleyevApp: App {
    @State private var isLight = false

    init() {
        // Ovoz telefon "ovozsiz" rejimida ham chiqishi uchun
        try? AVAudioSession.sharedInstance().setCategory(.playback, options: [.mixWithOthers])
        try? AVAudioSession.sharedInstance().setActive(true)
    }

    var body: some Scene {
        WindowGroup {
            WebContainer(isLight: $isLight)
                .ignoresSafeArea()
                .background(isLight ? Color.white : Color.black)
                .preferredColorScheme(isLight ? .light : .dark)
        }
    }
}
