//
//  PasswordTextField.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct PasswordTextField: View {
    @State private var password = ""
    var body: some View {
        VStack {
            HStack {
                Image("ico_20")
                SecureField("请输入登录密码", text: $password)
                    .frame(height:44)
            }.padding(.leading).padding(.trailing)
            Divider().padding(.leading).padding(.trailing)
        }
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextField()
    }
}
