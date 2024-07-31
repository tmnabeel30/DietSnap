//
//  NetworkManager.swift
//  Diet
//
//  Created by Nabeel on 31/07/24.
//

import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var jsonObject : [JSON]  = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData(){
        guard let url = URL(string: "") else {return}
        URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [JSON].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                       switch completion {
                       case .failure(let error):
                           print("Error fetching JSON: \(error)")
                       case .finished:
                           break
                       }
                   }, receiveValue: { [weak self] jsonObjects in
                       self?.jsonObject = jsonObjects
                   })
                   .store(in: &cancellables)
    }
    
}
