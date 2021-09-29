//
//  Model.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import Foundation

struct HackathonModel: Codable {
    let dog: Dog
 
    
    var imageDog: String {
        return "\(dog.imageDog)"
    }
}

struct Dog: Codable {
    let imageDog: String
    
    enum CodingKeys: String, CodingKey {
        case imageDog = "imageDog"
    }
}

struct ImageInfo: Codable, Identifiable {
    var id = UUID()
    let imageDog: String
    let title: String
    let description: String
    let sellPrice: String
    let originalPrice: String
    let url: URL
}

struct ImageInfoList{
    static let LCOTest = [
        
        ImageInfo(imageDog: "dog1", title: "First dog", description: "It will sell here", sellPrice: "Kr: 100", originalPrice: "200", url: URL(string:"https://dog.ceo/api/breeds/image/random")!),
        ImageInfo(imageDog: "dog2", title: "Second dog", description: "It will sell here", sellPrice: "Kr: 100", originalPrice: "200", url: URL(string:"https://dog.ceo/api/breeds/image/random")!),
        ImageInfo(imageDog: "dog3", title: "Third dog", description: "It will sell here", sellPrice: "Kr: 100", originalPrice: "200", url: URL(string:"https://dog.ceo/api/breeds/image/random")!),
    ]
}
