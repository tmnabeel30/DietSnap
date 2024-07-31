//
//  HeaderView.swift
//  Diet
//
//  Created by Nabeel on 29/07/24.
//

import SwiftUI


   
    
    struct HeaderView: View {
        var body: some View {
            VStack {
                Text("Today")
                    .font(.headline)
                Text("Thursday, 22nd Oct")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }

