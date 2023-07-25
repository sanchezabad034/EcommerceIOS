//
//  ContentView.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 23/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var is_login = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("purple")
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center){
                    
                    Image("OnBoard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Find your Gadget")
                        .font(.title)
                        .padding()
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    
                    Text("We provide all the lasted and most popular gadget products form various types and various brands for a better life")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(Color.white.opacity(0.5))
                        .fontWeight(.bold)
                    
                    NavigationLink(
                        destination: LoginView(),
                        isActive: $is_login,
                        label: {
                            Button("Get Started", action: {
                                print("Pulsado")
                                is_login = true
                            })
                                .frame(width: 280, height: 50)
                                .background(Color.white)
                                .foregroundColor(Color("purple"))
                                .cornerRadius(10)
                                .padding()
                        }
                    
                    )
                   
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
