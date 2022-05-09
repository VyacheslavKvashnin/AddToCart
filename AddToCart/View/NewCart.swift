//
//  NewCart.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 14.05.2021.
//

import SwiftUI

struct NewCart: View {
    @ObservedObject var homeModel = HomEModel()
    var body: some View {
        VStack {
            ForEach(homeModel.cartItems) { cartIt in
                HStack {
                    Text(cartIt.name)
                        .font(.title)
                }
                .contextMenu {
                    Button(action: {
                        let index = homeModel.getIndex(item: cartIt, isCartIndex: false)
                        bags[index].isAdded = false
                        homeModel.cartItems.remove(at: index)
                    }, label: {
                        Text("Delete")
                    })
                }
            }
        }
    }
}
