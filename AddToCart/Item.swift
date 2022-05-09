//
//  Item.swift
//  AddToCart
//
//  Created by Вячеслав Квашнин on 14.05.2021.
//

import SwiftUI

struct Item: Identifiable {
    
    var id: Int
    var name: String
    var lastName: String
    var image: String
    var isAdded: Bool = false
}

var bags = [
    Item(id: 1, name: "Roro", lastName: "Smit1", image: "pic1"),
    Item(id: 2, name: "Toto", lastName: "Smit2", image: "pic2"),
    Item(id: 3, name: "Soso", lastName: "Smit3", image: "pic3"),
    Item(id: 4, name: "Nono", lastName: "Smit4", image: "pic4"),
    Item(id: 5, name: "Dodo", lastName: "Smit5", image: "pic5")
]
