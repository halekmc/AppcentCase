//
//  TabBarView.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import SwiftUI

struct TabBarView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = UIColor(red: 0.98, green: 0.45, blue: 0.02, alpha: 1.00)
        UITabBar.appearance().unselectedItemTintColor = .white
        
    }
    var body: some View {
        
        TabView{
            
            
            HomePage(pageChoose: .Curiosity )
                .tabItem {
                            Image(systemName: "car.circle.fill")
                            Text("Curiosity")
                        }
                        .tag(1)
           
            
            HomePage(pageChoose: .Opportunity)
                .tabItem {
                            Image(systemName: "car.circle.fill")
                            Text("Oppotunity")
                        }
                        .tag(1)
            
            
            HomePage(pageChoose: .Spirit)
                .tabItem {
                            Image(systemName: "car.circle.fill")
                            Text("Sprit")
                        }
                        .tag(1)
            
            
                .background(Color(.black))
        }
  
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

