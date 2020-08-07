//
//  AgreementTip.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct AgreementTip: View {
    @State private var isMarked = false
    var body: some View {
        HStack(alignment: .top) {
            Radio(isMarked: $isMarked).frame(width: 10, height: 10).offset(y: 2)
            Group {
                Text("如您尚未注册，则您输入验证码后即为您自动注册账号，且您确认已阅读并同意").foregroundColor(Color(hex: 0x999999))
        
                + Text("《用户隐私协议》，《订户协议》，《电子签名服务协议》")
                    .foregroundColor(Color(hex: 0x0284DC)).underline()
            }.font(.system(size: 12))
        }.onTapGesture {
            self.isMarked = !self.isMarked
        }
    }
}

struct AgreementTip_Previews: PreviewProvider {
    static var previews: some View {
        AgreementTip()
    }
}
