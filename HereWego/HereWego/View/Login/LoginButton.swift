//
//  LoginButton.swift
//  HereWeGo
//
//  Created by Kyungsoo Lee on 2022/12/23.
//

import SwiftUI

struct LoginButton: View {
    // Test
    var viewModel: UserAPI = UserAPI()
    
    let url = URL(string: "http://hwgapp.com/oauth2/authorize/google?redirect_uri=http://hwgapp.com/v1/users")
    var provider : String
    var body: some View {
        VStack {
            Image("UCL_logo")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 200, height: 200)
            Link(destination: URL(string: "https://media.api-sports.io/football/leagues/39.png")!, label: {
                Text("TEST Image(https)")
            })
            Link(destination: url!, label: {
                HStack {
                    Spacer()
                    Text("직접 링크 넣기")
                    Spacer()
                }
                .padding()
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            })
            
            Button {
                // Test
                viewModel.fetch()
            } label: {
                HStack{
                    Text("viewModel.fetch()")
                        .foregroundColor(Color.white)
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.gray)
                        .cornerRadius(5.0)
                }
            }
            Button {
                
            } label: {
                HStack{
                    Text(provider + "로 로그인")
                        .foregroundColor(Color.white)
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(5.0)
                }
            }
            Button {
                
            } label: {
                HStack{
                    Text("깃허브로 로그인")
                        .foregroundColor(Color.white)
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.black)
                        .cornerRadius(5.0)
                }
            }
            Button {
                
            } label: {
                HStack{
                    Text("카카오로 로그인")
                        .foregroundColor(Color.white)
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(5.0)
                }
            }
   
        }//VStack
        .padding()
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(provider: "구글")
    }
}
