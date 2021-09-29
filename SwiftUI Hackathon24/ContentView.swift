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
                        Image(mt.imageDog)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 90)
                            .padding(.horizontal, 7)
                        VStack(alignment: .leading, spacing: 10){
                            Text(mt.title)
                                .fontWeight(.medium)
                                .font(.headline)
                            Text("(SellPrice)")
                                .fontWeight(.medium)
                                .font(.subheadline)
                                
                        }
                    })
                
            }.navigationTitle("SwiftUIHackathon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
