//
//  SquareItem.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct SquareItem: View {
    let item: MockData.SquareItems


    var body: some View {
        createBody().mask(RoundedRectangle(cornerRadius: 12))
    }
}
private extension SquareItem {
    @ViewBuilder func createBody() -> some View {
        switch item.image.contains("no_image") {
            case true: createAddNewItemBody()
            case false: createImageBody()
        }
    }
}
private extension SquareItem {
    func createAddNewItemBody() -> some View {
        Image("icon.plus")
            .resizable()
            .frame(40)
            .foregroundColor(.onBackgroundPrimary)
            .frame(80)
            .background(Color.backgroundSecondary)
    }
    func createImageBody() -> some View {
        Image(item.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(80)
    }
}
