//
//  SubBar.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            ActivityView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Activity")
                }
            GoalsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Goals")
                }
            CameraView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text("Camera")
                }
            FeedView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Feed")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}




struct CameraView: View {
    var body: some View {
        Text("Camera View")
    }
}

struct FeedView: View {
    var body: some View {
        Text("Feed View")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}

#Preview {
    MainScreen()
}
