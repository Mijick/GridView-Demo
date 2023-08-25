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
            createButtons()
        }
        .padding(.top, 24)
        .padding(.bottom, 12)
        .padding(.horizontal, .margin)
        .frame(maxWidth: .infinity)
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
        NavigationBarButton(icon: "icon.notifications", action: onSettingsButtonTap)
    }
    func createSettingsButton() -> some View {
        NavigationBarButton(icon: "icon.settings", action: onSettingsButtonTap)
    }
}

private extension NavigationBar {
    func onNotificationsButtonTap() {

    }
    func onSettingsButtonTap() {
        
    }
}


// MARK: - Button
fileprivate struct NavigationBarButton: View {
    let icon: String
    let action: () -> ()


    var body: some View { 
        Button(action: action) {
            Image(icon)
                .resizable()
                .frame(28)
                .foregroundColor(.onBackgroundPrimary)
        }
    }
}
