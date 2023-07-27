//
//  CardView.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 25/07/23.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){
                    product in
                    ProductRow(product: product)
                }
                
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
               
            }else{
               Text("Your cart is empty")
            }
           
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(CartManager())
    }
}
