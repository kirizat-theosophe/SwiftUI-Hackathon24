//
//  ViewModel.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import Foundation

class HackathonViewModel: ObservableObject {
    @Published var imageItem: String = ""
    @Published var name: String = ""
    @Published var name_extra: String = ""
    @Published var descriptionText: String = ""
    @Published var gross_price: String = ""
    @Published var gross_unit_price: String = ""
    @Published var url: URL?
    
  
    
    
    init() {
        fetchHackathon()
    }
    
    func fetchHackathon(){
        guard let url = URL(string: "https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6") else {
            return
            }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            //Convert data to Model
            do {
                let model = try JSONDecoder().decode(HackathonModel.self, from: data)
                
                DispatchQueue.main.async { [weak self] in
                    self?.imageItem = model.imageItem ?? "No Title"
                    //self?.name = model.name ?? "No Title"
                    self?.descriptionText = model.item.imageItem ?? "No Description"
                    //self?.gross_price = model.gross_price ?? "No Title"
                    //self?.gross_unit_price = model.gross_unit_price ?? "No Title"
                    //self?.url = model.url ?? "No Title"
                    
                    
                }
            }
            catch {
                print("faild")
            }
        }
        task.resume()
    }
}
