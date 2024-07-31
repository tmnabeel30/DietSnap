//
//  ExploreView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Explore")
                .font(.headline)
            HStack {
                Image("Explore1")
                VStack(alignment: .leading) {
                    Text("Find Diets")
                    Text("Find premade diets according to your cuisine")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            HStack {
                Image("Explore2")
                VStack(alignment: .leading) {
                    Text("Find Nutritionist")
                    Text("Get customized diets to achieve your health goal")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ExploreView()
}
