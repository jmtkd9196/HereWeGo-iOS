//
//  LoginView.swift
//  HereWeGo
//
//  Created by Kyungsoo Lee on 2022/11/01.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var loginSuccessful = false
    @State private var oauteChecked = false
    private var tempUserName = "jmtkd9196"
    private var tempPassword = "dlrudtn1234"
    var body: some View {
        if !loginSuccessful {
            VStack {
                Spacer()
                Image("UCL_logo")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                TextField("Username", text: $userName)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20)
                Button {
                    print(userName)
                    print(password)
                    if userName == tempUserName || password == tempPassword {
                        loginSuccessful = true
                    }
                } label: {
                    Text("Login")
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 20)
                }
                Spacer()
                Text("아이디/비밀번호 찾기")
                NavigationLink {
                    SignUpView()
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text("회원가입")
                }
                HStack {
                    Text("Oauth 연동")
                    Button {
                        oauteChecked.toggle()
                    } label: {
                        OauthCheckBox(isCheck: $oauteChecked)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            }
        } else {
            AddHomeTeamView(userName: self.$userName, password: self.$password)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
