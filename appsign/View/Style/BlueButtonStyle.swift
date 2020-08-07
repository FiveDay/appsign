//
//  BlueButtonStyle.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View  {
            configuration.label
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .font(.system(size: 17))
                .foregroundColor(Color(hex: 0xffffff))
                .background(Color(hex: 0x0284DC))
                .cornerRadius(4)
                .opacity(configuration.isPressed ? 0.5 : 1)
    }
}
