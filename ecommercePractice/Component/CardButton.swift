//
//  CardButton.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 24/07/23.
//

import SwiftUI

struct CardButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(Color.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 1)
    }
}
