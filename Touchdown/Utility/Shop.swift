//
//  Shop.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
