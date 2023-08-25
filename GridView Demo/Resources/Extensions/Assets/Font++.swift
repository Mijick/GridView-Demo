//
//  Font++.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension Font {
    static func bold(_ size: CGFloat) -> Font { .custom("Figtree-Bold", size: size) }
    static func semiBold(_ size: CGFloat) -> Font { .custom("Figtree-SemiBold", size: size) }
    static func medium(_ size: CGFloat) -> Font { .custom("Figtree-Medium", size: size) }
    static func regular(_ size: CGFloat) -> Font { .custom("Figtree-Regular", size: size) }
}
