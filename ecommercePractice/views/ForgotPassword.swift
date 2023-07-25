//
//  ForgotPassword.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 24/07/23.
//

import SwiftUI
import Firebase

struct ForgotPassword: View {
    @State private var email: String = ""
    @State private var signUpError: String = ""
    @State private var commerce: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(colors: [Color("gradientPurple"), Color("purple")], startPoint: .topTrailing, endPoint: .leading)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        
                        VStack{
                            Text("Forgot password")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .bold()
                            
                            Text("Did you forgot your password?")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                        }
                        Image("loginVector")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                        
                        
                    }
                    .padding()
                    VStack{
                        VStack(alignment: .leading){
                            HStack(alignment: .top){
                                Image(systemName: "mail")
                                Text("Email")
                            }.padding()
                            
                            TextField("Insert your email", text:$email)
                                .padding()
                                .autocorrectionDisabled(true)
                            Divider()
                                .background(Color.black)
                        }.padding()

                        
                        NavigationLink(destination: SignIn(),isActive:$commerce , label: {
                            Button("Reset password"){
                                ResetPassword()
                            }.frame(width: 280, height: 50)
                                .background(Color("purple"))
                                .foregroundColor(Color.white)
                                .cornerRadius(40)
                                .padding()
                            
                        })
                       
                        Text(signUpError)
                            .foregroundColor(.red)
                        
                        
                        
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                }
            }
            }
        
 
    }
    func ResetPassword() {
           Auth.auth().sendPasswordReset(withEmail: email) { error in
               if let error = error {
                   signUpError = error.localizedDescription
               } else {
                   signUpError = "A password reset email has been sent to your email address."
                    commerce = true
               }
           }
       }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
