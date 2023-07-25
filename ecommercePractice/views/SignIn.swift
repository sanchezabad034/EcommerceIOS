//
//  SignIn.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 23/07/23.
//

import SwiftUI
import Firebase



func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
}
struct SignIn: View {
    @State private var email: String = ""
    @State private var password: String = ""
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
                            Text("Create account")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .bold()
                            
                            Text("Don't have an account?")
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
                        
                        
                        VStack(alignment: .leading){
                            HStack{
                                Image(systemName: "lock.fill")
                                Text("Password")
                            }.padding()
                            
                            SecureField("Password", text:$password)
                                .padding()
                                .foregroundColor(Color.black)
                                .keyboardType(.asciiCapable)
                            Divider()
                                .background(Color.black)
                                .autocorrectionDisabled(true)
                            
                            
                            
                        }.padding()
                        
                        
                        
                        NavigationLink(destination: Commerce(),isActive:$commerce , label: {
                            Button("Sign up"){
                                SignUp()
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
    func SignUp() {
           Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
               if let error = error {
                   signUpError = error.localizedDescription
               } else {
                   commerce = true
               }
           }
       }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
