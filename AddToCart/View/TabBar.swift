//
//  TabBar.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 11.06.2021.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var homeModel = HomEModel()
    var body: some View {
        TabView {
            Home(homeModel: homeModel)
                .tabItem { Image(systemName: "house") }
            
            NewCart(homeModel: homeModel)
                .tabItem { Image(systemName: "cart") }
        }
    }
}
