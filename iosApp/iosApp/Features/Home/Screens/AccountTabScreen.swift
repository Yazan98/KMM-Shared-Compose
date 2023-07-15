//
//  AccountTabScreen.swift
//  iosApp
//
//  Created by Yazan Tarifi on 09/06/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

struct AccountTabScreen: View {
    var body: some View {
        CategoryComposeView().onAppear {
            print("Screen Item")
        }
    }
}

struct AccountTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccountTabScreen()
    }
}
