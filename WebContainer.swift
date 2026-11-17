import SwiftUI
import WebKit

/// Bundle ichidagi mendeleyev.html ni to'liq ekranda, internetsiz ochadi.
struct WebContainer: UIViewRepresentable {
    @Binding var isLight: Bool

    func makeCoordinator() -> Coordinator { Coordinator(isLight: $isLight) }

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        // JavaScript -> Swift: tebranish (haptic) va mavzu (theme) signallari
        let controller = WKUserContentController()
        controller.add(context.coordinator, name: "haptic")
        controller.add(context.coordinator, name: "theme")
        config.userContentController = controller

        let web = WKWebView(frame: .zero, configuration: config)
        web.isOpaque = false
        web.backgroundColor = .black
        web.scrollView.backgroundColor = .black
        web.scrollView.contentInsetAdjustmentBehavior = .never
        web.navigationDelegate = context.coordinator
        web.allowsBackForwardNavigationGestures = false

        #if SWIFT_PACKAGE
        let bundle = Bundle.module
        #else
        let bundle = Bundle.main
        #endif

        if let url = bundle.url(forResource: "mendeleyev", withExtension: "html") {
            web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let color: UIColor = isLight ? .white : .black
        uiView.backgroundColor = color
        uiView.scrollView.backgroundColor = color
    }

    final class Coordinator: NSObject, WKScriptMessageHandler, WKNavigationDelegate {
        private let light = UIImpactFeedbackGenerator(style: .light)
        private let medium = UIImpactFeedbackGenerator(style: .medium)
        private var isLight: Binding<Bool>

        init(isLight: Binding<Bool>) { self.isLight = isLight }

        func userContentController(_ userContentController: WKUserContentController,
                                   didReceive message: WKScriptMessage) {
            switch message.name {
            case "haptic":
                if (message.body as? String) == "tap" {
                    medium.impactOccurred()
                } else {
                    light.impactOccurred()
                }
            case "theme":
                let value = (message.body as? String) == "light"
                DispatchQueue.main.async { self.isLight.wrappedValue = value }
            default:
                break
            }
        }

        // Tashqi havolalar Safari'da ochiladi
        func webView(_ webView: WKWebView,
                     decidePolicyFor navigationAction: WKNavigationAction,
                     decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if navigationAction.navigationType == .linkActivated,
               let url = navigationAction.request.url,
               url.scheme?.hasPrefix("http") == true {
                UIApplication.shared.open(url)
                decisionHandler(.cancel)
                return
            }
            decisionHandler(.allow)
        }
    }
}
