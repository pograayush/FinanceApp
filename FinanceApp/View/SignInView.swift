//
//  SignInView.swift
//  FinanceApp
//
//  Created by Ayush Pogra on 02/10/24.
//

import SwiftUI

struct SignInView: View {
    @State var userName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button {
                        print("")
                    } label: {
                        Image("arrow-back")
                            .frame(width: 48, height: 48)
                            .clipped()
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            .padding(.leading)
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 8.0, content: {
                    
                    Text("Create Account")
                        .padding(.leading, 24)
                        .font(.system(size: 24, weight: .bold))
                    
                    Text("Lorem ipsum dolor sit amet, consectetur")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .padding(.leading, 24)
                    
                }).frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 48)
                
                VStack(alignment: .leading) {
                    Text("Full Name")
                    TextField("Enter your email address", text: $userName)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.bottom, 15)
                    
                    
                    Text("Email Address")
                    TextField("Enter your email address", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.bottom, 15)
                    
                    Text("Password")
                    
                    
                    HStack {
                        SecureField("Enter your password", text: $password)
                        
                        Button {
                            print("Toggle password visibility")
                        } label: {
                            Image(systemName: "eye.slash")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    
                }.padding()
                
                Button {
                    print("")
                } label: {
                    Text("Create An Account")
                        .foregroundColor(Color.white)
                        .frame(width: 327, height: 48)
                        .background(Color("ButtonColor"))
                        .cornerRadius(10)
                    
                }
                Spacer(minLength: 50)
                HStack {
                    Divider()
                        .frame(width: 50)
                    Text("Or Sign Up with")
                    
                    Divider()
                        .frame(width: 50)
                    
                }.padding()
                
                Spacer(minLength: 20)
                
                HStack(spacing: 20) {
                    Button {
                        print("Sign in with Google")
                    } label: {
                        Image("Google")
                            .resizable()
                            .frame(width: 48, height: 48)
                    }
                    
                    Button {
                        print("Sign in with Apple")
                    } label: {
                        Image("Apple")
                            .resizable()
                            .frame(width: 48, height: 48)
                        
                    }
                    
                    Button {
                        print("Sign in with Facebook")
                    } label: {
                        Image("Facebook")
                            .resizable()
                            .frame(width: 48, height: 48)
                    }
                }.padding()
                
                HStack {
                    Text("By signing up, you agree to our ")
                        .foregroundColor(.gray)
                    Button {
                        print("Terms tapped")
                    } label: {
                        Text("Terms")
                            .foregroundColor(.blue)
                    }
                    Text(" and ")
                        .foregroundColor(.gray)
                    Button {
                        print("Conditions tapped")
                    } label: {
                        Text("Conditions of Use")
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SignInView()
}
