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
                let sideSize = size.width * 2
                
                
                let firstQuadrantSquare = CGRect(
                    origin: CGPointMake(center.x, .zero),
                    size: CGSizeMake(size.width * 0.5, size.height * 0.5)
                )
                
                let secondQuadrantSquare = CGRect(
                    origin: CGPointMake(.zero, .zero),
                    size: CGSizeMake(size.width * 0.5, size.height * 0.5)
                )
                
                let thirdQuadrantSquare = CGRect(
                    origin: CGPointMake(.zero, center.y),
                    size: CGSizeMake(size.width * 0.5, size.height * 0.5)
                )
                
                let fourthQuadrantSquare = CGRect(
                    origin: CGPointMake(center.x, center.y),
                    size: CGSizeMake(size.width * 0.5, size.height * 0.5)
                )
                
                context.transform = CGAffineTransform(translationX: center.x, y: center.y)
                    .rotated(by: Angle(degrees: timelineContext.date.timeIntervalSince1970).radians * 90)
                    .translatedBy(x: -center.x, y: -center.y)

                context.fill(Rectangle().path(in: firstQuadrantSquare), with: .color(Color.Background.midLightBlue))
                context.fill(Rectangle().path(in: secondQuadrantSquare), with: .color(Color.Background.midDarkBlue))
                context.fill(Rectangle().path(in: thirdQuadrantSquare), with: .color(Color.Background.lightBlue))
                context.fill(Rectangle().path(in: fourthQuadrantSquare), with: .color(Color.Background.darkBlue))
   
            }
//            .frame(width: 1280)
        }
        
        
        .aspectRatio(1, contentMode: .fill)
        .frame(width: 640, height: 480)
        .clipped()
        
        
    }
}

#Preview {
    BackgroundView()
}
