//
//  FoodInfo.swift
//  Diet
//
//  Created by Nabeel on 30/07/24.
//

import SwiftUI

struct FoodInfo: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ZStack(alignment: .topLeading) {
                    Image("Food")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                        .clipped()
                    
                    VStack {
                        // Back button
                        HStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.white)
                                    
                                    
                                    .cornerRadius(20)
                            }
                            Text("Back")
                            .foregroundColor(.white)
                            .bold()
                            Spacer()
                        }
                        .padding(.top, 50) // Adjust for notch
                        .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        // Food name and rating
                        HStack() {
                            VStack(alignment: .leading){
                               Text("Food Information")
                               .font(.title3)
                               .fontWeight(.bold)
                               .foregroundColor(.white)
                                Text("Fried Chicken")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                           }
                            
                            Spacer()
                            
                            HStack(spacing: 5) {
                                
                                ZStack{
                                    Color.gray
                                        .frame(width: 76,height: 70)
                                        .cornerRadius(10)
                                        .opacity(0.8)
                                    VStack{
                                        Text("71")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(8)
                                            
                                            .cornerRadius(5)
                                        
                                        Text("out of 100")
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                            .dynamicTypeSize(.small)
                                    }
                                    .frame(width: 70, height: 70)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                        .shadow(radius: 3)
                    }
                }
                
                // Description
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(.headline)
                    Text("Fried chicken is a dish consisting of chicken pieces usually from broiler chickens which have been floured or battered and then pan-fried, deep fried, or pressure fried.")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                
                // Macro Nutrients
                VStack(alignment: .leading, spacing: 10) {
                    Text("Macro Nutrients")
                        .font(.headline)
                    
                    VStack {
                        HStack {
                            Spacer()
                            Text("Per Serve")
                                .padding(.horizontal, 40)
                            Text("Per 250gm")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            nutrientRow(name: "Energy", value1: "415 J", value2: "600 J")
                            nutrientRow(name: "Protein", value1: "2g", value2: "6g")
                            nutrientRow(name: "Trans Fat", value1: "0.5g", value2: "1g")
                            nutrientRow(name: "Saturated Fat", value1: "0.8g", value2: "0.8g")
                            nutrientRow(name: "Carbohydrates", value1: "3g", value2: "5.5g")
                            nutrientRow(name: "Fibre", value1: "4g", value2: "7.2g")
                        }
                    }
                    
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Facts
                VStack(alignment: .leading, spacing: 10) {
                    Text("Facts")
                        .font(.headline)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        ScrollView(.horizontal){
                            HStack{
                                Text("Did you know?")
                                    .font(.subheadline)
                                    .foregroundColor(.orange)
                                factsItemView(facts: "There are more chickens on earth than people ~ 25 billion. There are also more chickens than any other bird species.")
                            }
                            
                        }
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 100
                           , alignment: .leading)
                    .background(Color.orange.opacity(0.2))
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Similar Items
                VStack(alignment: .leading, spacing: 10) {
                    Text("Similar Items")
                        .font(.headline)
                    
                    HStack {
                        similarItemView(imageName: "chicken-tandoor", name: "Chicken Tandoor")
                        similarItemView(imageName: "pulav", name: "Pulav")
                    }
                }
                .padding(.horizontal)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    func nutrientRow(name: String, value1: String, value2: String) -> some View {
        HStack {
            Text(name)
                .frame(width: 120, alignment: .leading)
            Spacer()
            Text(value1)
                .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
            Text(value2)
                .frame(width: 50, alignment: .trailing) // Adjust width as needed
        }
        .font(.subheadline)
    }
    func similarItemView(imageName: String, name: String) -> some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 100)
                .cornerRadius(10)
                .clipped()
            Text(name)
                .font(.caption)
        }
    }
    
    func factsItemView(facts:String) -> some View{
    
        return Text(facts)
            .font(.body)
    }
}


#Preview {
    FoodInfo()
}
