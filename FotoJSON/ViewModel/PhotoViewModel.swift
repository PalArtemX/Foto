//
//  PhotoViewModel.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 04.09.2021.
//

import Foundation
import Combine


class PhotoViewModel: ObservableObject {
    
    @Published var photos: [Photo] = []
    var cancellable = Set<AnyCancellable>()
 
    init() {
        getFotoPost()
    }
    
    
    // MARK: - func
    
    func getFotoPost() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) -> Data in
                guard
                    let response = response as? HTTPURLResponse,
                    response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [Photo].self, decoder: JSONDecoder())
            .sink { (completion) in
                
                // FIXME: - add handle error
                print("❕Completion: \(completion)")
                
            } receiveValue: { [weak self] (returnedPost) in
                self?.photos = returnedPost
            }
            .store(in: &cancellable)

        
    }
}
