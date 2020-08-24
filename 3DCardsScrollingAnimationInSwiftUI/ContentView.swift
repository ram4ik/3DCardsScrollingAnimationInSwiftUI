//
//  ContentView.swift
//  3DCardsScrollingAnimationInSwiftUI
//
//  Created by Ramill Ibragimov on 24.08.2020.
//

import SwiftUI

struct ContentView: View {
    
    var colors = [
        Color.red.opacity(0.3),
        Color.yellow.opacity(0.3),
        Color.green.opacity(0.3),
        Color.blue.opacity(0.3),
        Color.purple.opacity(0.3),
        Color.red.opacity(0.3),
        Color.yellow.opacity(0.3),
        Color.green.opacity(0.3),
        Color.blue.opacity(0.3),
        Color.purple.opacity(0.3)
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: geometry.size.width/2) {
                    ForEach(0..<self.colors.count, id: \.self) { index in
                        CardView(number: index+1, color: self.colors[index])
                    }
                }.padding(.horizontal,geometry.frame(in: .global).maxX/2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
