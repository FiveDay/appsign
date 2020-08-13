//
//  elem-ui-btn.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/11.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

enum ButtonType: String {
    case normal
    case primary
    case success
    case info
    case warning
    case danger
}

struct ElemButtonModifier: ViewModifier {
    public var type: ButtonType = .normal
    public var plain: Bool = false
    public var round: Bool = false
    
    @Environment(\.isEnabled) private var isEnabled

    func body(content: Content) -> some View {
        let bg = "ele-btn-" + self.type.rawValue + "-bg" + (self.plain ? "-plain" : "")
        let fg = "ele-btn-" + self.type.rawValue + "-txt" + (self.plain ? "-plain" : "")
        let bd = "ele-btn-" + self.type.rawValue + "-border" + (self.plain ? "-plain" : "")

        let shape = self.round ? RoundedRectangle(cornerRadius: 22) : RoundedRectangle(cornerRadius: 4)

        return content
           .font(Font.custom("PingFangSC-Medium", size: 16))
           .frame(maxWidth: .infinity, maxHeight: 44)
           .foregroundColor(Color(fg))
           .background(Color(bg))
           .clipShape(shape)
           .overlay(shape.stroke(Color(bd), lineWidth: 1))
           .opacity(self.isEnabled ? 1 : 0.5)

    }
}

extension Button {
    func elemStyle(type:ButtonType = .normal, plain:Bool = false, round:Bool = false) -> some View {
        self.modifier(ElemButtonModifier(type: type, plain: plain, round: round))
    }
}

struct elem_btn_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemStyle()
                
                Button("主要按钮") {

                }.elemStyle(type: .primary)
                
                Button("成功按钮") {

                }.elemStyle(type: .success)
                
                Button("信息按钮") {

                }.elemStyle(type: .info)
                
                Button("警告按钮") {

                }.elemStyle(type: .warning)
                
                Button("危险按钮") {
                }.elemStyle(type: .danger)
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemStyle(plain: true)

                Button("主要按钮") {

                }.elemStyle(type: .primary, plain: true)
                
                Button("成功按钮") {

                }.elemStyle(type: .success, plain: true)
                
                Button("信息按钮") {

                }.elemStyle(type: .info, plain: true)
                
                Button("警告按钮") {

                }.elemStyle(type: .warning, plain: true)
                
                Button("危险按钮") {

                }.elemStyle(type: .danger, plain: true)
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemStyle(round: true)

                Button("主要按钮") {

                }.elemStyle(type: .primary, round: true)
                
                Button("成功按钮") {

                }.elemStyle(type: .success, round: true)
                
                Button("信息按钮") {

                }.elemStyle(type: .info, round: true)
                
                Button("警告按钮") {

                }.elemStyle(type: .warning, round: true)
                
                Button("危险按钮") {

                    }.elemStyle(type: .danger, round: true).disabled(true)
            })
            
        }

    }
}
