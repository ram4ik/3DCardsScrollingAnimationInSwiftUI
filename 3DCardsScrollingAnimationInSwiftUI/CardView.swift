//
//  CardView.swift
//  3DCardsScrollingAnimationInSwiftUI
//
//  Created by Ramill Ibragimov on 24.08.2020.
//

import SwiftUI

struct CardView: View {
    let number: Int
    let color: Color
    let maxX = UIScreen.main.bounds.maxX
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(self.color)
                    .shadow(color: self.color.opacity(1), radius: 10)
                    .background(Color.white)
                    .frame(width: 230, height: 250)
                Text("\(self.number)")
                    .font(.system(size: 35))
                    .bold()
            }.rotation3DEffect(
                Angle(
                    degrees: Double((geometry.frame(in: .global).maxX - self.maxX) + self.maxX/2) / -5),
                axis: (x: 0, y: 1.0, z: 0)
            )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(number: 1, color: .red)
    }
}
