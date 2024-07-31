//
//  CircularProgressView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct CircularProgressView: View {
    var progress: Double
    var color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.2), style: StrokeStyle(lineWidth: 10))
            
            Circle()
                .trim(from: 0, to: CGFloat(min(progress, 1.0)))
                .stroke(color, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .rotationEffect(Angle(degrees: -90))
                .animation(.linear, value: progress)
        }
    }
}

#Preview {
    CircularProgressView(progress: 0.7, color: .blue)
}





