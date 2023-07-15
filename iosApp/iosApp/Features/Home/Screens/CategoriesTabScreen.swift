//
//  CategoriesTabScreen.swift
//  iosApp
//
//  Created by Yazan Tarifi on 09/06/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

struct CategoriesTabScreen: View {
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach((1...10).reversed(), id: \.self) { id in
                    NavigationLink(destination: EmptyView()) {
                        CategoryComposeView().onAppear {
                            print("Screen Item : \(id)")
                        }
                    }
                }
            }
        }
    }
}
