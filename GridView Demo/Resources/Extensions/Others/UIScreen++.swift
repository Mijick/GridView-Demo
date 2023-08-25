//
//  UIScreen++.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension UIScreen {
    static let width: CGFloat = UIScreen.main.bounds.size.width
    static let safeArea: UIEdgeInsets = {
        UIApplication.shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first(where: \.isKeyWindow)?
            .safeAreaInsets ?? .zero
    }()
    static let margin: CGFloat = 16
}

// MARK: - Numeric Helpers
extension CGFloat {
    static var margin: CGFloat { UIScreen.margin }
}
