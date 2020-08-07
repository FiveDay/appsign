//
//  Radio.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct Radio: View {
    
    @Binding var isMarked: Bool
    
    var body: some View {
        Circle()
            .fill(Color(hex: 0x0284DC))
            .overlay(Circle().fill(Color.white).padding(2))
            .overlay(Circle().fill(self.isMarked ? Color(hex: 0x0284DC) : Color.white).padding(2))
    }
}

struct Radio_Previews: PreviewProvider {
    @State static var isMarked = false
    static var previews: some View {
        Radio(isMarked: $isMarked).onTapGesture {
            isMarked = !isMarked
        }.frame(width: 10, height: 10)
    }
}
