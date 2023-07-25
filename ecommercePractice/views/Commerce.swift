//
//  Commerce.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 24/07/23.
//

import SwiftUI

struct Commerce: View {
    
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productlist, id: \.id){product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .navigationTitle(Text("Apple Shop"))
                .padding()
                .toolbar{
                    NavigationLink{
                        CardView()
                            .environmentObject(cartManager)
                    }label: {
                        CardButton(numberOfProducts: cartManager.products.count)
                    }
                    
                }
                .toolbarRole(.editor)
            }
            .navigationViewStyle(StackNavigationViewStyle())
           
        }
    }
}

struct Commerce_Previews: PreviewProvider {
    static var previews: some View {
        Commerce()
    }
}
