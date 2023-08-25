//
//  MainView.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import MijickGridView

struct MainView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            createTopView()
            createTabBar()
        }
        .padding(.top, UIScreen.safeArea.top)
        .padding(.bottom, UIScreen.safeArea.bottom)
        .background(Color.backgroundPrimary)
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}
private extension MainView {
    func createTopView() -> some View {
        VStack(spacing: 0) {
            createNavigationBar()
            createContentView()
        }
    }
    func createTabBar() -> some View {
        TabBar()
    }
}
private extension MainView {
    func createNavigationBar() -> some View {
        NavigationBar()
    }
    func createContentView() -> some View {
        ScrollView(showsIndicators: false) { 
            VStack(spacing: 0) {
                createContentTagsView()
                Spacer.height(24)
                createContentSquareImagesView()
                Spacer.height(44)
                createContentImagesView()
            }
            .padding(.top, 16)
            .padding(.bottom, 80)
        }
    }
}
private extension MainView {
    func createContentTagsView() -> some View {
        EmptyView()
    }
    func createContentSquareImagesView() -> some View {
        EmptyView()
    }
    func createContentImagesView() -> some View {
        EmptyView()
    }
}
