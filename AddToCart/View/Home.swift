//
//  Home.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 14.05.2021.
//

import SwiftUI

struct Home: View {
    @ObservedObject var homeModel : HomEModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    ForEach(bags) { bag in
                        HStack {
                            Text(bag.name)
                                .font(.title)
                            Text(bag.lastName)
                                .font(.title)
                            
                            Spacer()
                            
                            Button(action: {
                                homeModel.addToCart(item: bag)
                            }, label: {
                                Image(systemName: bag.isAdded ? "cart" : "cart.fill")
                                    .font(.title)
                            })
                        }
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .background(Color.green)
                    }
                }
            })
        }
    }
}
