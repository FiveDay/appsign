//
//  MobileLogin.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct MobileLogin: View {
    var body: some View {
        NavigationView {
            VStack {
                
                MobileTextField()
                PasswordTextField()
                
                Spacer()
                
                HStack {
                    Spacer()
                    Spacer()
                    
                    Button("登 录") {
                        
                    }.buttonStyle(BlueButtonStyle())

                    Spacer()
                    Spacer()
                }
                
                AgreementTip().padding()
                
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
                        Text("账户密码登录").font(.system(size: 14)).foregroundColor(Color(hex: 0x000000))
                    }
                }
                
                Spacer()
            }.navigationBarTitle("短信登录")
        }
    }
}

struct MobileLogin_Previews: PreviewProvider {
    static var previews: some View {
        MobileLogin()
    }
}
