//
//  weui-swift.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/10.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct weui_btn_primary: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.background(Color(""))
    }
}

struct weui_btn_primary_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
