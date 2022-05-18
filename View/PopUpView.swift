//
//  PopUpView.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import SwiftUI
import Kingfisher

struct PopUpView: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    @Binding var photo : Photo
    @Binding var isShow : Bool
    var body: some View {
        ZStack{
            
            Color.black
            RoundedRectangle(cornerRadius: 15)
                .overlay(
                    VStack(spacing:0){
                        HStack(spacing:0){
                            Spacer(minLength: 0)
                            Button {
                                self.isShow = false
                            } label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                            }
                        }
                        VStack(spacing:0){
                            Text(photo.camera?.fullName ?? "")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.bottom)
                        }
                        VStack(spacing:0){
                            
                            KFImage(URL(string: photo.imgSrc ?? ""))
                                .resizable()
                                .frame(width: width*0.55, height: width*0.50)
                                .scaledToFit()
                                .clipped()
                                
                                
                            
                            
                            VStack(alignment: .leading, spacing: 5){
                                HStack{
                                    Text(photo.rover?.name ?? "")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.status ?? "")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Birth Date ")
                                        .font(.title2)
                                        .font(.system(size: 8))
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.earthDate ?? "" )
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                    
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Launching Date: ")
                                        .font(.title2)
                                        .font(.system(size: 8))
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.launchDate ?? "")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Landing Date: ")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.landingDate ?? "")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                            }
                            .padding(.top)
                        }
                        .padding()
                    })
                .frame(width: width*0.9, height: height*0.7)
                .transition(.move(edge: .top))
                .foregroundColor(.cyan.opacity(0.8))
            
        }
    }
}
struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(photo: .constant(Photo.dummyData), isShow: .constant(true))
    }
}
