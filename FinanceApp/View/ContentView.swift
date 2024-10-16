import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var rememberMe = true
    @State private var showPopUp = false  

    var body: some View {
        ScrollView {
            VStack {
                
                HStack {
                    Button {
                        print("Back tapped")
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                            .padding()
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer(minLength: 40)
                
                Text("Hi, Welcome Back! 👋")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                
                Text("Lorem ipsum dolor sit amet, consectetur")
                    .foregroundColor(.gray)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    Text("Email Address")
                        .font(.caption)
                        .fontWeight(.bold)
                    
                    TextField("Enter your email address", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.bottom, 15)
                }
                
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.caption)
                        .fontWeight(.bold)
                    
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
                }
                
                HStack {
                    Button {
                        rememberMe.toggle()
                    } label: {
                        HStack {
                            Image(systemName: rememberMe ? "checkmark.square" : "square")
                            Text("Remember Me")
                        }
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button {
                        print("Forgot Password tapped")
                    } label: {
                        Text("Forgot Password")
                            .foregroundColor(Color("ButtonColor"))
                    }
                }
                .padding(.vertical, 10)
                
                Button(action: {
                    showPopUp = true
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("ButtonColor"))
                        .cornerRadius(10)
                        .padding(.vertical)
                }
                
                HStack {
                    Text("Don’t have an account?")
                    
                    Button(action: {
                        print("Sign Up tapped")
                    }) {
                        Text("Sign Up")
                            .foregroundColor(Color("SecondaryColor"))
                    }
                }
                .padding(.bottom)
                
                HStack {
                    Text("Or Sign In with")
                        .foregroundColor(.gray)
                        .padding(.vertical)
                }
                
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
                }
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .overlay(
            Group {
                if showPopUp {
                    ZStack {
                        Color.black.opacity(0.4)
                            .edgesIgnoringSafeArea(.all)
                        
                        CustomPopView(showPopUp: $showPopUp) 
                            .frame(width: 300, height: 250)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    }
                }
            }
        )
    }
}

#Preview {
    ContentView()
}
