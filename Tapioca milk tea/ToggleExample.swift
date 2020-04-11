//
//  ToggleExample.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ToggleExample: View {
    
    @State var showText = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $showText){
                Text("show text!!")
            }
            if showText{
                Text("Hello World.")
            }
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
