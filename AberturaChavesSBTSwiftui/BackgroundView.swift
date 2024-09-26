//
//  BackgroundView.swift
//  AberturaChavesSBTSwiftui
//
//  Created by Matheus Silveira Venturini on 26/09/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
//        TimelineView(.animation) { timelineContext in
        TimelineView(.periodic(from: .now, by: 0.00015)) { timelineContext in
            Canvas(opaque: true) { context, size in
                
                let time = timelineContext.date
                
                let center = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
                
                let sideSize = size.width
                
                
                let firstQuadrantSquare = CGRect(
                    origin: CGPointMake(center.x, .zero - sideSize * 0.5),
                    size: CGSizeMake(sideSize, sideSize)
                )
                
                let secondQuadrantSquare = CGRect(
                    origin: CGPointMake(.zero - sideSize * 0.5, .zero - sideSize * 0.5),
                    size: CGSizeMake(sideSize, sideSize)
                )
                
                let thirdQuadrantSquare = CGRect(
                    origin: CGPointMake(.zero - sideSize * 0.5, center.y),
                    size: CGSizeMake(sideSize, sideSize)
                )
                
                let fourthQuadrantSquare = CGRect(
                    origin: CGPointMake(center.x, center.y),
                    size: CGSizeMake(sideSize, sideSize)
                )
                
                context.transform = CGAffineTransform(translationX: center.x, y: center.y)
                    .rotated(by: Angle(degrees: timelineContext.date.timeIntervalSince1970).radians * 90)
                    .translatedBy(x: -center.x, y: -center.y)

                context.fill(Rectangle().path(in: firstQuadrantSquare), with: .color(Color.Background.midLightBlue))
                context.fill(Rectangle().path(in: secondQuadrantSquare), with: .color(Color.Background.midDarkBlue))
                context.fill(Rectangle().path(in: thirdQuadrantSquare), with: .color(Color.Background.lightBlue))
                context.fill(Rectangle().path(in: fourthQuadrantSquare), with: .color(Color.Background.darkBlue))
   
            }

        }
        
        .ignoresSafeArea()

        
        
    }
}

#Preview {
    BackgroundView()
}
