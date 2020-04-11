//
//  SecureFieldExample.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SecureFieldExample: View {
    @State var pwd = ""
    var body: some View {
        VStack{
            SecureField("enter your password", text: $pwd)
            Text("password is \(pwd)")
        }.padding()
    }
}

struct SecureField_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExample()
    }
}
