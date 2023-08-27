//
//  CircularButton.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct CircularButton: View {
    let icon: String
    let action: () -> ()


    var body: some View {
        Button(action: action) {
            Image(icon)
                .resizable()
                .frame(24)
                .foregroundColor(.onBackgroundPrimary)
                .frame(36)
                .background(Color.backgroundSecondary)
                .mask(Capsule())
        }
    }
}
