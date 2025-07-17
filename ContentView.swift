//
//  ContentView.swift
//  Smart payroll
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        // Aktiviere JavaScript (falls benötigt)
        webView.configuration.preferences.javaScriptEnabled = true
        // Aktiviere Zooming
        webView.scrollView.isScrollEnabled = true
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://lohn-soon-seite.lovable.app/auth")!)
            .edgesIgnoringSafeArea(.all)
    }
}

// Preview für Xcode
#Preview {
    ContentView()
}
