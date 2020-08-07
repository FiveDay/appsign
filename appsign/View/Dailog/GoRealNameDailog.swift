//
//  GoRealNameDailog.swift
//  appsign
//
//  Created by zhangyu528 on 2020/5/14.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct GoRealNameDailog: View {
    var body: some View {
        ZStack {
            Color(hex: 0x000000, alpha: 0.5).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("签约/发起签约")
                    .font(.system(size: 16))
                Text("请进行实名认证")
                    .font(.system(size: 16))
                Spacer()
                HStack {
                    Button(action: {
                                          
                                      }) {
                                          Text("暂不实名")
                                            .font(.system(size: 16, weight: .medium))
                    }
                    .frame(width: 258 / 2, height: 44)
                    .border(Color(hex: 0x979797), width: 0.5)
                    .foregroundColor(Color(hex: 0x000000))

                    Spacer(minLength: 0)
                    
                    Button(action: {
                                        
                                    }) {
                                        Text("去实名")
                                            .font(.system(size: 16, weight: .medium))
                                        }
                    .frame(width: 258 / 2, height: 44)
                    .foregroundColor(Color(hex: 0xffffff))
                    .background(Color(hex: 0x0284DC))
                }
            }
            .frame(width: 258, height: 174)
            .background(Color(hex: 0xffffff))
            .cornerRadius(4)
        }
    }
}

struct GoRealNameDailog_Previews: PreviewProvider {
    static var previews: some View {
        GoRealNameDailog()
    }
}
