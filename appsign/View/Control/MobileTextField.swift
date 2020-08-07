//
//  MobileTextField.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct MobileTextField: View {
    @State private var mobile = ""
    var body: some View {
        VStack {
            HStack {
                Image("ico_19")
                TextField("请输入注册手机号", text: $mobile)
                    .frame(height:44)
            }.padding(.leading).padding(.trailing)
            Divider().padding(.leading).padding(.trailing)
        }
    }
}

struct MobileTextField_Previews: PreviewProvider {
    static var previews: some View {
        MobileTextField()
    }
}
