//
//  HomePage.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import SwiftUI
import Kingfisher
import MapKit

struct HomePage: View {
    @State var isShowPopUp = false
    @State var pageChoose : TabChoose
    
    init(pageChoose : TabChoose){
        self.pageChoose = pageChoose
    }
    @State var photo : Photo = .dummyData
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    @State var  filterStr = ""
    var camerasFiltered: [Photo] {
               get {
                  (filterStr.isEmpty )
                   ? viewModel.articleList
                   : viewModel.articleList.filter { $0.camera?.name?.range(of: filterStr, options: .caseInsensitive) != nil }
               }
            }
    
    @StateObject var viewModel = HomePageViewModel()
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .overlay(
                        
                        Menu {
                            Button {
                                filterStr = FilterModel.CameraName.fhaz.rawValue
                            } label: {
                                Text("FHAZ")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.rhaz.rawValue
                            } label: {
                                Text("RHAZ")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.mast.rawValue
                            } label: {
                                Text("MAST")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.chemcam.rawValue
                            } label: {
                                Text("CHEMCAM")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.mahlı.rawValue
                            } label: {
                                Text("MAHLI")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.mardı.rawValue
                            } label: {
                                Text("MARDI")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.navcam.rawValue
                            } label: {
                                Text("NAVCAM")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.pancam.rawValue
                            } label: {
                                Text("PANCAM")
                            }
                            Button {
                                filterStr = FilterModel.CameraName.mınıtes.rawValue
                            } label: {
                                Text("MINITES")
                            }
                        } label: {
                            Label("Filter", systemImage: "camera.filters")
                        }.foregroundColor(.white)
                    )
                    .foregroundColor(Color.theme.filterColor)
                    .frame(width: 350, height: 42)
                if viewModel.articleList.isEmpty{
                    ProgressView()
                }else{
                    ScrollView {
                        VStack{
                            LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(camerasFiltered, id: \.self) { item in
                                    ContentView(article: item)
                                        .onAppear(perform: {
                                            viewModel.index += 1
                                            viewModel.pagination()
                                            print(viewModel.index)
                                            
                                        })
                                        .onTapGesture {
                                            self.photo = item
                                            self.isShowPopUp = true
                                        }
                                }
                            }
                        }
                        
                    }
                }
            }.onAppear{
                viewModel.getPhotos(pageChoose: pageChoose.rawValue)
            }
            if isShowPopUp {
                PopUpView(photo: $photo, isShow: $isShowPopUp)
                
                    .frame(width: 500, height: 320)
             
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(pageChoose: .Curiosity)
    }
}
