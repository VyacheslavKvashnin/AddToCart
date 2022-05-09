//
//  Cart.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 14.05.2021.
//

import SwiftUI

struct Cart: Identifiable {
    var id = UUID().uuidString
    var item: Item
    var quantity: Int
    var nameNew: String
}
