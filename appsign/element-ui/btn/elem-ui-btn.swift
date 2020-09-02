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

extension View {
    func elemButtonStyle(type:ButtonType = .normal, plain:Bool = false, round:Bool = false) -> some View {
           self.modifier(ElemButtonModifier(type: type, plain: plain, round: round))
    }
}

extension Button {

}

struct elem_btn_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemButtonStyle()
                
                Button("主要按钮") {

                }.elemButtonStyle(type: .primary)
                
                Button("成功按钮") {

                }.elemButtonStyle(type: .success)
                
                Button("信息按钮") {

                }.elemButtonStyle(type: .info)
                
                Button("警告按钮") {

                }.elemButtonStyle(type: .warning)
                
                Button("危险按钮") {
                }.elemButtonStyle(type: .danger)
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemButtonStyle(plain: true)

                Button("主要按钮") {

                }.elemButtonStyle(type: .primary, plain: true)
                
                Button("成功按钮") {

                }.elemButtonStyle(type: .success, plain: true)
                
                Button("信息按钮") {

                }.elemButtonStyle(type: .info, plain: true)
                
                Button("警告按钮") {

                }.elemButtonStyle(type: .warning, plain: true)
                
                Button("危险按钮") {

                }.elemButtonStyle(type: .danger, plain: true)
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.elemButtonStyle(round: true)

                Button("主要按钮") {

                }.elemButtonStyle(type: .primary, round: true)
                
                Button("成功按钮") {

                }.elemButtonStyle(type: .success, round: true)
                
                Button("信息按钮") {

                }.elemButtonStyle(type: .info, round: true)
                
                Button("警告按钮") {

                }.elemButtonStyle(type: .warning, round: true)
                
                Button("危险按钮") {

                }.elemButtonStyle(type: .danger, round: true).disabled(true)
            })
            
        }

    }
}
