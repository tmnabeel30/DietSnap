//
//  GoalsView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        
        ZStack {
            // Background color
            Color(red: 250 / 255, green: 250 / 255, blue: 255 / 255)
                .frame(height: 80) // Ensures the color fills the entire background
            
            VStack(alignment: .leading) {
                Text("Your Goals")
                    .font(.headline)
                HStack {
                    Image("Goal") // Make sure the image "Goal" exists in your assets
                        .resizable()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Keto Weight loss plan")
                        Text("Current Major Goal")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    ZStack {
                        Text("73%")
                        CircularProgressView(progress: 0.73, color: .orange)
                            .frame(width: 50, height: 50)
                    }
                }
            }
            .padding()
            .background(Color(red: 250 / 255, green: 250 / 255, blue: 255 / 255)) // Background color for VStack
            .cornerRadius(10)
            .frame(height: 80)
            .padding(.horizontal, 20) // Horizontal padding for VStack
        }
    }
}

#Preview {
    GoalsView()
}
