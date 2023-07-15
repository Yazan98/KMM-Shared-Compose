//
//  HomeScreen.swift
//  iosApp
//
//  Created by Yazan Tarifi on 06/06/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

struct HomeScreen: View {
        
    static func getScreenInstance() -> some View {
        let screen = HomeScreen()
        return screen
    }
    
    var body: some View {
        NavigationView {
                    ZStack {
                        TabView {
                            HomeTabScreen()
                                .clipped()
                                .tabItem {
                                    Image(systemName: "house")
                                    Text("Tab 1")
                                }
                            
                            CategoriesTabScreen()
                                .tabItem {
                                    Image(systemName: "list.bullet")
                                    Text("Tab 2")
                                }
                            
                            AccountTabScreen()
                                .tabItem {
                                    Image(systemName: "person.fill")
                                    Text("Tab 3")
                                }
                        }
                    }
                    .navigationBarTitle("Radio")
                    .navigationBarTitleDisplayMode(.inline)
                }
        
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
