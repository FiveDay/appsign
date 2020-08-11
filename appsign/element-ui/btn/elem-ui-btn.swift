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

struct elem_btn_style: ButtonStyle {

    public var type: ButtonType? = .normal
    public var plain = false
    public var round = false
    
    func makeBody(configuration: Configuration) -> some View {
        let bg = "ele-btn-" + self.type!.rawValue + "-bg" + (self.plain ? "-plain" : "")
        let fg = "ele-btn-" + self.type!.rawValue + "-txt" + (self.plain ? "-plain" : "")
        let bd = "ele-btn-" + self.type!.rawValue + "-border" + (self.plain ? "-plain" : "")
        
        let shape = self.round ? RoundedRectangle(cornerRadius: 22) : RoundedRectangle(cornerRadius: 4)
        
        return configuration.label
            .font(Font.custom("PingFangSC-Medium", size: 16))
            .frame(maxWidth: .infinity, maxHeight: 44)
            .foregroundColor(Color(fg))
            .background(Color(bg))
            .clipShape(shape)
            .overlay(shape.stroke(Color(bd), lineWidth: 1))
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct elem_btn_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                    }.buttonStyle(elem_btn_style())

                Button("主要按钮") {

                }.buttonStyle(elem_btn_style(type: .primary))
                
                Button("成功按钮") {

                }.buttonStyle(elem_btn_style(type: .success))
                
                Button("信息按钮") {

                }.buttonStyle(elem_btn_style(type: .info))
                
                Button("警告按钮") {

                }.buttonStyle(elem_btn_style(type: .warning))
                
                Button("危险按钮") {

                }.buttonStyle(elem_btn_style(type: .danger))
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.buttonStyle(elem_btn_style(plain: true))

                Button("主要按钮") {

                }.buttonStyle(elem_btn_style(type: .primary, plain: true))
                
                Button("成功按钮") {

                }.buttonStyle(elem_btn_style(type: .success, plain: true))
                
                Button("信息按钮") {

                }.buttonStyle(elem_btn_style(type: .info, plain: true))
                
                Button("警告按钮") {

                }.buttonStyle(elem_btn_style(type: .warning, plain: true))
                
                Button("危险按钮") {

                }.buttonStyle(elem_btn_style(type: .danger, plain: true))
            })
            
            VStack(alignment: .center, spacing: 10, content: {
                Button("默认按钮") {

                }.buttonStyle(elem_btn_style(round: true))

                Button("主要按钮") {

                }.buttonStyle(elem_btn_style(type: .primary, round: true))
                
                Button("成功按钮") {

                }.buttonStyle(elem_btn_style(type: .success, round: true))
                
                Button("信息按钮") {

                }.buttonStyle(elem_btn_style(type: .info, round: true))
                
                Button("警告按钮") {

                }.buttonStyle(elem_btn_style(type: .warning, round: true))
                
                Button("危险按钮") {

                }.buttonStyle(elem_btn_style(type: .danger, round: true))
            })
            
        }

    }
}
