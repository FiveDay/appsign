//
//  FailedDailog.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/5.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct FailedDailog: View {
    @State var content:String = "注册失败"
       var body: some View {
           ZStack {
               Color(hex: 0x000000, alpha: 0.5).edgesIgnoringSafeArea(.all)
               VStack {
                   Spacer()
                   Image("error_ico")
                       .frame(width: 58, height: 58)
                   Spacer()
                   Text(self.content)
                       .foregroundColor(Color(hex: 0xEA3D3D))
                       .font(.system(size: 17))
                   Spacer()
               }.frame(width: 220, height: 177)
               .background(Color(hex: 0xffffff))
               .cornerRadius(4)
           }
       }
}

struct FailedDailog_Previews: PreviewProvider {
    static var previews: some View {
        FailedDailog()
    }
}
