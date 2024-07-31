//
//  JsonModel.swift
//  Diet
//
//  Created by Nabeel on 31/07/24.
//

import Foundation

struct JSON : Codable, Identifiable {
    let id = UUID()
    let success : Bool
    let message : String
    let data:Data
}

struct Data : Codable {
    let description : String
    let name: String
    let health_rating : Int
}
