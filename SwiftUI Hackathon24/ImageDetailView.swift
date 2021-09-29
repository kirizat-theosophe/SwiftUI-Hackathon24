//
//  ImageDetailView.swift
//  SwiftUI Hackathon24
//
//  Created by Bruker on 24/09/2021.
//

import SwiftUI

struct ImageDetailView: View {
    
    var imageInfo: ImageInfo
    
    var body: some View {
        
        VStack{
            Image(imageInfo.imageDog)
                .resizable()
                .scaledToFit()
                .frame(height: 210)
                .cornerRadius(12.0)
            Text(imageInfo.title)
                .font(.title2)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 4)
            
            HStack(spacing: 60){
                Text("Kr \(imageInfo.sellPrice)")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.green)
                Text("Kr \(imageInfo.originalPrice)")
                    .font(.title3)
                    .strikethrough()
                    .padding(.vertical, 15)
            }
            HStack(spacing: 60){
                VStack{
                    Text("360")
                        .font(.title)
                        .bold()
                    Text("First Qual")
                }
                VStack{
                    Text("300")
                        .font(.title)
                        .bold()
                    Text("Second Qual")
                }
                VStack{
                    Text("260")
                        .font(.title)
                        .bold()
                    Text("Third Qual")
                }
            }
            
            Text(imageInfo.description)
                .padding()
            Spacer()
                
            Link(destination: imageInfo.url, label: {
                Text("Link Enroll Now")
                    .bold()
                    .frame(width: 320, height: 40)
                    .background(Color(.systemGreen))
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                
            })
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(imageInfo: ImageInfoList.LCOTest[1])
    }
}

