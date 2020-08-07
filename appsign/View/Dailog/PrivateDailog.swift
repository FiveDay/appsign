//
//  PrivateDailog.swift
//  appsign
//
//  Created by zhangyu528 on 2020/5/9.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct PrivateDailog: View {
    var body: some View {
        ZStack {
            Color(hex: 0x000000, alpha: 0.5).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("隐私协议").font(.system(size: 16, weight: .medium))
                Spacer()
                (Text("欢迎使用“电签合同”！我们非常重视您的个人信息和隐私保护。在您用使用“电签合同”服务之前，请仔细阅读")
                    + Text("《电签合同隐私协议》").foregroundColor(Color(hex: 0x0284DC))
                    + Text("，我们将严格按照经您同意的各项条款使用您的个人信息，以便为您提供更好的服务。"))
                    .padding().font(.system(size: 13))
                Spacer()
                (Text("如您同意").foregroundColor(Color(hex: 0x999999))
                    + Text("《电签合同隐私协议》").foregroundColor(Color(hex: 0x0284DC))
                    + Text("，请点击“同意”，开始使用我们的产品和服务。").foregroundColor(Color(hex: 0x999999)))
                    .padding().font(.system(size: 13))
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("不同意并退出")
                    }.frame(width: 129, height: 44)
                    .foregroundColor(Color(hex: 0x0284DC))
                    .background(Color(hex: 0xffffff))
                    .border(Color(hex: 0x979797), width: 0.5)
                    .cornerRadius(4)

                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("同意")
                        }.frame(width: 129, height: 44)
                        .foregroundColor(Color(hex: 0xffffff))
                        .background(Color(hex: 0x0284DC))
                        .cornerRadius(4)
                    Spacer()
                }
                Spacer()
            }
            .frame(width: 302, height: 336)
            .background(Color(hex: 0xffffff))
            .cornerRadius(4)
        }
    }
}

struct PrivateDailog_Previews: PreviewProvider {
    static var previews: some View {
        PrivateDailog()
    }
}
