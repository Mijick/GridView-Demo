//
//  Color++.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension Color {
    static let accent: Color = .init(hex: 0x66D46F)

    static let backgroundPrimary: Color = .init(hex: 0x111111)
    static let backgroundSecondary: Color = .init(hex: 0x292929)

    static let onBackgroundPrimary: Color = .init(hex: 0xFFFFFF)
    static let onBackgroundSecondary: Color = .init(hex: 0xB2B2B2)

    static let onAccent: Color = .white
}


// MARK: - Initialisation with HEX value
fileprivate extension Color {
    init(hex: UInt) { self.init(.sRGB, red: Double((hex >> 16) & 0xff) / 255, green: Double((hex >> 08) & 0xff) / 255, blue: Double((hex >> 00) & 0xff) / 255, opacity: 1) }
}
