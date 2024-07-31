//
//  TodayView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack{
            ZStack {
                CircularProgressView(progress: 0.7, color: .orange)
                    .frame(width: 160, height: 160)
                
                CircularProgressView(progress: 0.5, color: .purple)
                    .frame(width: 130, height: 130)
                    .padding(10)
                VStack {
                    Text("SET GOAL!")
                        .font(.headline)
                        .bold()
                    
                }
            }
            
            VStack {
                HStack{
                    Image("Diet")
                    Text("Diet pts")
                    Image("Fitness")
                    Text("Exercise pts")
                }
                .padding()
                HStack (spacing: 30){
                                 VStack {
                                     Text("1500")
                                         .foregroundColor(.orange)
                                     Text("Cal")
                                         
                                 }
                                 
                                 VStack {
                                     Text("3/5")
                                         .foregroundColor(.orange)
                                     Text("Days")
                                        
                                 }
                                 
                                 VStack {
                                     Text("88")
                                         .foregroundColor(.orange)
                                     Text("Health Score")
                                        
                                 }
                             }
               
                .font(.caption)
                
            }
          
            
            
            
                
        }
        .frame(height: 200)
    }
}

#Preview {
    TodayView()
}
