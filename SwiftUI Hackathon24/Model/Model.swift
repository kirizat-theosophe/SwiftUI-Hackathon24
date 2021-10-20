//
//  Model.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import Foundation

struct HackathonModel: Codable {
    let item: Item
 
    
    var imageItem: String {
        return "\(item.imageItem)"
    }
}

struct Item: Codable {
    let imageItem: String
    
    enum CodingKeys: String, CodingKey {
        case imageItem = "imageItem"
    }
}


struct ImageInfo: Codable, Identifiable {
    var id = UUID()
    let imageItem: String
    let name: String
    let name_extra: String
    let description: String
    let gross_price: String
    let gross_unit_price: String
    let offset: Float
    var isSwiped: Bool
    let url: URL
}

struct ImageInfoList{
    static let LCOTest = [
        
        ImageInfo(imageItem: "item_1", name: "Gresskar Butternut", name_extra: "Portugal/ Spania, 750 g", description: "It will sell here", gross_price: "33.00", gross_unit_price: "44.00", offset: 0, isSwiped: false,  url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_2", name: "Koriander Gourmet", name_extra: "Frisk i Pose, Etiopia, 20 g", description: "It will sell here", gross_price: "27.60", gross_unit_price: "13.00", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_3", name: "Tulipaner Mix", name_extra: "15 stk", description: "It will sell here", gross_price: "129.00", gross_unit_price: "8.60", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_4", name: "Gourmet Grovbrød", name_extra: "Oppskåret, 670 g", description: "It will sell here", gross_price: "33.57", gross_unit_price: "50.10", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_5", name: "Ricotta", name_extra: "Ambrosi, 250 g", description: "It will sell here", gross_price: "24.90", gross_unit_price: "99.60", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_6", name: "Fullkornsris", name_extra: "Boil-in-bag 8x125g, 1 kg", description: "It will sell here", gross_price: "35.60", gross_unit_price: "35.60", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_7", name: "Mild Curry Paste", name_extra: "165 g", description: "It will sell here", gross_price: "33.70",  gross_unit_price: "204.24", offset: 0, isSwiped: false, url: URL(string:"https://api.jsonbin.io/b/60832bec4465377a6bc6b6e6")!),
        ImageInfo(imageItem: "item_8", name: "Kokosmelk", name_extra: "Vår beste pris, 400 ml", description: "It will sell here", gross_price: "13.90", gross_unit_price: "34.75", offset: 0, isSwiped: false, url: URL(string:"https://dog.ceo/api/breeds/image/random")!),
    ]
}
