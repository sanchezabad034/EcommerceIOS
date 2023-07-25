//
//  CartManager.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 25/07/23.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeForCart(product: Product){
        products = products.filter{ $0.id != product.id }
        total -= product.price
    }
}
