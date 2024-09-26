//
//  BackgroundView.swift
//  AberturaChavesSBTSwiftui
//
//  Created by Matheus Silveira Venturini on 26/09/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        Canvas(opaque: true) { context, size in
            
            let firstQuadrantSquare = CGRect(
                origin: CGPointMake(size.width * 0.5, .zero),
                size: CGSizeMake(size.width * 0.5, size.height * 0.5)
            )
            
            let secondQuadrantSquare = CGRect(
                origin: CGPointMake(.zero, .zero),
                size: CGSizeMake(size.width * 0.5, size.height * 0.5)
            )
            
            let thirdQuadrantSquare = CGRect(
                origin: CGPointMake(.zero, size.height * 0.5),
                size: CGSizeMake(size.width * 0.5, size.height * 0.5)
            )
            
            let fourthQuadrantSquare = CGRect(
                origin: CGPointMake(size.width * 0.5, size.height * 0.5),
                size: CGSizeMake(size.width * 0.5, size.height * 0.5)
            )
            

            context.fill(Rectangle().path(in: firstQuadrantSquare), with: .color(Color.Background.midLightBlue))
            context.fill(Rectangle().path(in: secondQuadrantSquare), with: .color(Color.Background.midDarkBlue))
            context.fill(Rectangle().path(in: thirdQuadrantSquare), with: .color(Color.Background.lightBlue))
            
            context.fill(Rectangle().path(in: fourthQuadrantSquare), with: .color(Color.Background.darkBlue))

            
            
        }
        .aspectRatio(1, contentMode: .fill)
        .rotationEffect(Angle(degrees: 43))
        
    }
}

#Preview {
    BackgroundView()
}
