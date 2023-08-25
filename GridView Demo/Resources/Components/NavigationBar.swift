//
//  NavigationBar.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct NavigationBar: View {
    var body: some View { 
        HStack(spacing: 0) {
            createText()
            Spacer()
        }
    }
}
private extension NavigationBar {
    func createText() -> some View {
        Text("Good Morning")
            .font(.bold(24))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createButtons() -> some View {
        HStack(spacing: 20) {
            createNotificationsButton()
            createSettingsButton()
        }
    }
}
private extension NavigationBar {
    func createNotificationsButton() -> some View {

    }
    func createSettingsButton() -> some View {

    }
}

private extension NavigationBar {
    func onNotificationsButtonTap() {

    }
    func onSettingsButtonTap() {
        
    }
}
