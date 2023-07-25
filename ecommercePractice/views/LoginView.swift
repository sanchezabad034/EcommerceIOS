//
//  LoginView.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 23/07/23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {

  func application(_ application: UIApplication,

                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

    FirebaseApp.configure()

    return true

  }

}



struct LoginView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorLogin: String = ""
    @State private var sign_in: Bool = false
    @State private var commerce: Bool = false
    @State private var forgot_password: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(colors: [Color("gradientPurple"), Color("purple")], startPoint: .topTrailing, endPoint: .leading)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        
                        VStack{
                            Text("Welcome \n back")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .bold()
                            
                            Text("Login now to continue")
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
                        
                        NavigationLink(destination: ForgotPassword(), isActive: $forgot_password, label: {
                            Button("Forgot Password?"){
                                    print("View Active")
                                    forgot_password = true
                            }
                        })
                       
                            
                       
                        
                        NavigationLink(
                            destination: Commerce(), isActive: $commerce, label: {
                                Button("Log In"){
                                    login()
                                }.frame(width: 280, height: 50)
                                    .background(Color("purple"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(40)
                                    .padding()
                            }
                        )
                      
                        
                        Text(errorLogin)
                            .foregroundColor(.red)
                        
                        NavigationLink(
                            destination: SignIn(),isActive: $sign_in ,label: {
                                Button("Create account ", action:{
                                    sign_in = true
                                    print("Create account")
                                }).padding(.bottom, 20)
                            }
                        
                        )
                        
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                }
            }
        }.navigationBarHidden(true)
 
    }
    func login() {
           Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
               if let error = error {
                   errorLogin = error.localizedDescription
               } else {
                   commerce = true
               }
           }
       }
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
