//
//  PasswordLogin.swift
//  appsign
//
//  Created by zhangyu528 on 2020/5/12.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct PasswordLogin: View {

    var body: some View {
        NavigationView {
            VStack {
                Group {
                    MobileTextField()
                    PasswordTextField()
                }
                
                Spacer()

                HStack {
                    Spacer()
                    Spacer()

                    Button("登 录") {
                        
                    }.buttonStyle(BlueButtonStyle())
                    
                    Spacer()
                    Spacer()
                }

                HStack {
                    Button(action: {
                        
                    }) {
                        Text("快速注册").font(.system(size: 14)).foregroundColor(Color(hex: 0x000000))
                    }
                    Divider().frame(height: 18)
                    Button(action: {
                        
                    }) {
                        Text("忘记密码?").font(.system(size: 14)).foregroundColor(Color(hex: 0x000000))
                    }
                }.padding()

                Group {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                OrDivider()
            
                Button(action: {
                    
                }) {
                    VStack {
                        Image("ico_02").renderingMode(.original)
                        Text("手机短信登录").font(.system(size: 14)).foregroundColor(Color(hex: 0x000000))
                    }
                }
                
                Spacer()
            }
            .navigationBarTitle("登录")
        }
    }
}

struct PasswordLogin_Previews: PreviewProvider {
    static var previews: some View {
        PasswordLogin()
    }
}
