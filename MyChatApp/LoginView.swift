//
//  ContentView.swift
//  MyChatApp
//
//  Created by jacqueline Ngigi on 2024-10-08.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
   @State var isLoginMode = false
    @State var email = ""
        @State var password = ""
    
    init(){
        FirebaseApp.configure()
        
    }
    
    var body: some View {
        // to be  able to move between views
        NavigationView{
            // to make the page  Scrollable
            ScrollView{
                
                Picker(selection: $isLoginMode, label: Text("Picker here")) {
                                        Text("Login")
                                            .tag(true)
                                        Text("Create Account")
                                            .tag(false)
                                    }.pickerStyle(SegmentedPickerStyle())
                                        
                                    if !isLoginMode {
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "person.fill")
                                                .font(.system(size: 64))
                                                .padding()
                                        }
                                    }
               
                Group {
                                       TextField("Email", text: $email)
                                           .keyboardType(.emailAddress)
                                           .autocapitalization(.none)
                                       SecureField("Password", text: $password)
                                   }
                                   .padding(12)
                                   .background(Color.white)
                                   
                                   Button {
                                       
                                   } label: {
                                       HStack {
                                           Spacer()
                                           Text(isLoginMode ? "Log In" : "Create Account")
                                               .foregroundColor(.white)
                                               .padding(.vertical, 10)
                                               .font(.system(size: 14, weight: .semibold))
                                           Spacer()
                                       }.background(Color.blue)
                                       
                                   }
                               }
                               .padding()
                               
                

                
                Text("Here is my creation account page")
                
            }
            .navigationTitle("Create Account")
            
        }
        
    }


#Preview {
    LoginView()
}
