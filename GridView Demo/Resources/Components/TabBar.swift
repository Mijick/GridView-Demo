//
//  TabBar.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct TabBar: View {
    @State private var activeTab: Tab = .home


    var body: some View {
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.self, content: createButton)
        }
        .padding(.top, 12)
        .padding(.bottom, UIScreen.safeArea.bottom)
        .padding(.horizontal, 24)
        .ignoresSafeArea()
        .background(createBackground())
    }
}
private extension TabBar {
    func createButton(_ tab: Tab) -> some View {
        Button(action: { onButtonTap(tab) }) {
            VStack(spacing: 4) {
                createIcon(tab)
                createText(tab)
            }
            .foregroundColor(tab == activeTab ? .onBackgroundPrimary : .onBackgroundSecondary)
        }
        .frame(maxWidth: .infinity)
    }
    func createBackground() -> some View {
        LinearGradient(stops: [
            .init(color: .backgroundPrimary.opacity(0.72), location: 0),
            .init(color: .backgroundPrimary, location: 0.3)
        ], startPoint: .top, endPoint: .bottom)
    }
}
private extension TabBar {
    func createIcon(_ tab: Tab) -> some View {
        Image(tab.icon)
            .resizable()
            .frame(28)
    }
    func createText(_ tab: Tab) -> some View {
        Text(tab.title).font(.medium(11))
    }
}

private extension TabBar {
    func onButtonTap(_ tab: Tab) {

    }
}


// MARK: - Tab
fileprivate enum Tab: CaseIterable { case home, search, saved }
private extension Tab {
    var icon: String { switch self {
        case .home: return "icon.fill.home"
        case .search: return "icon.search"
        case .saved: return "icon.bookmarks"
    }}
    var title: String { switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .saved: return "Saved"
    }}
}
