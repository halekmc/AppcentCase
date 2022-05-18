//
//  ContentView.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
   
    let photo: Photo
    init(article: Photo){
        self.photo = article
    }
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        
        ZStack {
           
            KFImage(URL(string: photo.imgSrc ?? ""))
                .resizable()
                .frame(width: width*0.5, height: width*0.5)
                .scaledToFit()
                .padding()
            VStack {
                Spacer(minLength: 0)
                VStack{
                    Spacer(minLength: 0)
                    ZStack{
                        Color.gray.opacity(0.3)
                           
                        VStack {
                            Spacer(minLength: 0)
                            Text(photo.camera?.fullName ?? "")
                                .font(.footnote)
                                          .lineLimit(1)
                                          .padding()
                                          .multilineTextAlignment(.center)
                                      .foregroundColor(.white)
                        }
                    }.frame(width: width*0.5, height: width*0.1)
                   
                }
            }.frame(width: width*0.2, height: width*0.1)
        }
        
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(article: Photo(id: 1, sol: 1, camera: Camera(id: 1, name: "lorem", roverID: 1, fullName: "lorem"), imgSrc: "https://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/pia24543-1-16.jpg", earthDate: "10.10.2010", rover: Rover(id: 1, name: "Rover", landingDate: "10.10.2010", launchDate: "10.10.2010", status: "Ready")))
    }
}
