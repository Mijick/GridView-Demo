//
//  TagItem.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct TagItem: View {
    let text: String


    var body: some View {
        Text(text)
            .font(.semiBold(14))
            .foregroundColor(.backgroundPrimary)
            .padding(.horizontal, 16)
            .frame(height: 36)
            .background(Color.accent)
            .mask(Capsule())
    }
}
