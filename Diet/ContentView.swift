//
//  ContentView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
                    VStack(spacing: 20) {
                        HeaderView()
                            .padding()
                        TodayView()
                        GoalsView()
                            .padding(.top, 40)
                        ExploreView()
                    }
                    
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Dietsnap")
                                .bold()
                                .foregroundColor(.orange)
                                .shadow(radius: 5)
                                        }
                        ToolbarItemGroup(placement: .primaryAction) {
                                Button(action: {}) {
                                    Image("Notification")
                                }
                                Button(action: {}) {
                                    Image("Achievement")
                                }
                                Button(action: {}) {
                                    Image("Message")
                                
                            }
                            
                        }
                    }
                }
            }
        }
    }
}






#Preview {
    ActivityView()
}
