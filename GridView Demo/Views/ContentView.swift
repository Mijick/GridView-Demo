//
//  ContentView.swift of GridView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import MijickGridView

struct ContentView: View {
    var body: some View {
        GridView(0..<12, id: \.self) { index in
            Text("Hello kurwa \(index)")
                .padding(.vertical, 28)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .columns(2)

        } configBuilder: { config in
            config.columns(3)
        }
    }
}

#Preview {
    ContentView()
}
