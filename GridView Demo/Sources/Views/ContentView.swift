//
//  ContentView.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import MijickGridView

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            createNavigationBar()
            createContentView()
        }
        .background(Color.backgroundPrimary)
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

private extension ContentView {
    func createNavigationBar() -> some View {
        NavigationBar()
    }
    func createContentView() -> some View {
        Spacer()
    }
    func createTabBar() -> some View {
        EmptyView()
    }
}

private extension ContentView {

}

private extension ContentView {

}



#Preview {
    ContentView()
}
