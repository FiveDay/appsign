//
//  OrDivider.swift
//  appsign
//
//  Created by zhangyu528 on 2020/8/6.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct OrDivider: View {
    var body: some View {
        HStack {
            VStack {
                Divider().padding()
            }
            Text("或")
            VStack {
                Divider().padding()
            }
        }
    }
}

struct OrDivider_Previews: PreviewProvider {
    static var previews: some View {
        OrDivider()
    }
}
