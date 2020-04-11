//
//  TextFieldExample.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct TextFieldExample: View {

@State var name = ""
    
    var body: some View {
        VStack{
            TextField("put your name", text: $name)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
            )
            Text("Hello!\(name)")
        }
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
