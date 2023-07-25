//
//  products.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 24/07/23.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productlist = [Product(name: "Air pods Gen 2", image: "airpodsGen2", price: 320),
                    Product(name: "Air pods Max Silver", image: "airpodsMaxSilver", price: 1020),
                    Product(name: "Air pods pro", image: "airpodsPro", price: 220),
                    Product(name: "Apple watch 7", image: "AppleWatch7", price: 120),
                    Product(name: "i Mac M1 2021", image: "iMacM12021", price: 420),
                    Product(name: "iPad Air ", image: "iPadAir", price: 120),
                    Product(name: "iPad Air 4", image: "iPadAir4", price: 120),
                    Product(name: "iPad Mini", image: "iPadMini", price: 320),
                    Product(name: "iPad pro ", image: "iPadPro", price: 420),
                    Product(name: "iPad pro 2021 ", image: "iPadPro2021", price: 920),
                    Product(name: "iPhone 11 ", image: "iPhone11", price: 420),
                    Product(name: "iPhone 12 ", image: "iPhone12", price: 520),
                    Product(name: "iPhone 12 Pro ", image: "iPhone12Pro", price: 620),
                    Product(name: "iPhone 13 ", image: "iPhone13", price: 720),
                    Product(name: "iPhone 13 Pro ", image: "iPhone13Pro", price: 800),
                    Product(name: "iPhone 14 Pro ", image: "iPhone14Pro", price: 1020),
                    Product(name: "iPhone Se ", image: "iPhoneSE", price: 420),
                    Product(name: "MacBookAir", image: "MacBookAir", price: 520),
                    Product(name: "MacBookAir M2", image: "MacBookAirM2", price: 820),
                    Product(name: "MacBookPro", image: "MacBookPro", price: 820),
                    Product(name: "MacBookPro", image: "MacBookPro2021", price: 620),
                    Product(name: "MacStudio", image: "MacStudio", price: 420),
]
