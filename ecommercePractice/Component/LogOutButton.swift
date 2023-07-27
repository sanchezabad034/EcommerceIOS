//
//  LogOutButton.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 27/07/23.
//

import SwiftUI
import Firebase

struct LogOutButton: View {
    func logout(){
        do{
            try Auth.auth().signOut()
        }catch let error{
            print("Error signingout \(error)")
        }
    }
    
    var body: some View {
        VStack{
            Button{
                logout()
            }label: {
                Text("LogOut")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color("purple"))
                    .cornerRadius(80)
            }
        }
        
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
