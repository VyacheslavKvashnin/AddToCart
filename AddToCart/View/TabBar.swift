//
//  TabBar.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 11.06.2021.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var homeMadel = HomEModel()
    var body: some View {
        TabView {
            Home(homeModel: homeMadel)
                .tabItem { Image(systemName: "house") }
            
            NewCart(homeModel: homeMadel)
                .tabItem { Image(systemName: "cart") }
        }
    }
}
