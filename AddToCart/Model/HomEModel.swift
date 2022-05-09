//
//  HomEModel.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 14.05.2021.
//

import SwiftUI

class HomEModel: ObservableObject {
    
    @Published var cartItems: [Item] = []
    
    func addToCart(item: Item) {
        bags[getIndex(item: item, isCartIndex: false)].isAdded = !item.isAdded
        if item.isAdded {
            self.cartItems.remove(at: getIndex(item: item, isCartIndex: true))
            return
        }
        self.cartItems.append(Item(id: item.id, name: item.name, lastName: item.lastName, image: item.image))
    }
    
    func getIndex(item: Item, isCartIndex: Bool) -> Int {
        let index = bags.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
        let cartIndex = self.cartItems.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
        return isCartIndex ? cartIndex : index
    }
}
