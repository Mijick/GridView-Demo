//
//  RegularItem.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct RegularItem: View {
    let item: MockData.RegularItems


    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            createImage()
            createMoreButton()
        }
    }
}
private extension RegularItem {
    func createImage() -> some View {
        Image(item.image)
            .resizable()
            .scaledToFit()
            .mask(RoundedRectangle(cornerRadius: 12))
    }
    func createMoreButton() -> some View {
        Button(action: onMoreButtonTap) {
            Image("icon.more")
                .resizable()
                .frame(24)
                .foregroundColor(.onBackgroundPrimary)
        }
    }
}

private extension RegularItem {
    func onMoreButtonTap() {

    }
}
