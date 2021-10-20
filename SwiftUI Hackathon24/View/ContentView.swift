//
//  ContentView.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HackathonViewModel()
    
    var imageInfo : [ImageInfo] = ImageInfoList.LCOTest
    
    var body: some View {
        
        NavigationView {
            List(imageInfo) { mt in
                NavigationLink(
                    destination: ImageDetailView(imageInfo: mt),
                    label: {
                        Image(mt.imageItem)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 90)
                            .padding(.horizontal, 7)
                        VStack(alignment: .leading, spacing: 10){
                            Text(mt.name)
                                .fontWeight(.medium)
                                .font(.headline)
                            Text(mt.gross_price)
                                .fontWeight(.medium)
                                .font(.subheadline)
                                .padding(.vertical, 2)
                                
                        }
                        
                        HStack(spacing: 30){
                                Text("-")
                                    .bold()
                                Text("*")
                                    .bold()
                                Text("+")
                                    .bold()
                            }
                        })
                VStack{
                    HStack(spacing: 75){
                        Text("Total")
                            .bold()
                            .font(.title)
                            .foregroundColor(.green)
                        Text("Price")
                            .bold()
                            .font(.title)
                            .foregroundColor(.green)
                    }
                }
                
            }.navigationTitle("ShoppingItems")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
