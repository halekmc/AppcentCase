//
//  AppcentCaseApp.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import SwiftUI

@main
struct AppcentCaseApp: App {
    @UIApplicationDelegateAdaptor var delegate: FSAppDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TabBarView()
            }
        }
    }
}


class FSAppDelegate: NSObject, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    
      DispatchQueue.main.asyncAfter(deadline: .now()+1) {
         print("try")
      }
      
      return true
  }
}

