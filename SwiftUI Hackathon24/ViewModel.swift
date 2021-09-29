//
//  ViewModel.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import Foundation
/*let url = URL(string: "http://www.stackoverflow.com")
let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    let jsonDecoder = JSONDecoder()
    let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)

}
task.resume()*/
//Data needed by view

class HackathonViewModel: ObservableObject {
    @Published var imageDog: String = ""
    @Published var title: String = ""
    @Published var descriptionText: String = ""
    @Published var sellPrice: String = ""
    @Published var originalPrice: String = ""
    @Published var url: URL?
    
  
    
    
    init() {
        fetchHackathon()
    }
    
    func fetchHackathon(){
        guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else {
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
                    self?.imageDog = model.imageDog ?? "No Title"
                    //self?.title = model.title ?? "No Title"
                    self?.descriptionText = model.dog.imageDog ?? "No Description"
                    //self?.sellPrice = model.sellPrice ?? "No Title"
                    //self?.originalPrice = model.originalPrice ?? "No Title"
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
