//
//  SignInView.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 17.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State private var name = ""
    @State private var lastName = ""
    @State private var email = ""
    
    var body: some View {
        VStack{
            Text("Sign in")
                .bold()
                .scaleEffect(1.3)
            
            GrayTextField(title: "First name", text: $name, isSecured: false)
                .padding(.init(top: 80, leading: 0, bottom: 0, trailing: 0))
            GrayTextField(title: "Last name", text: $lastName)
                .padding(.init(top: 35, leading: 0, bottom: 0, trailing: 0))
            GrayTextField(title: "Email", text: $email)
                .padding(.init(top: 35, leading: 0, bottom: 0, trailing: 0))
            HStack {
                Text("Already have an account?")
                NavigationLink("Log in", destination: LoginView())
                    .foregroundColor(.blue)
                Spacer()
            }
                
            
            Spacer(minLength: 99)
            Button(action: {}) {
                Spacer()
                Text("Login")
                    .bold()
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .tint(Color(red: 0.306, green: 0.333, blue: 0.843))
            
            
            Spacer()
        }
        .padding(EdgeInsets(top: 180, leading: 43, bottom: 0, trailing: 43))
        .ignoresSafeArea()
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
