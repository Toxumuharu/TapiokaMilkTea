//
//  SliderExample.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SliderExample: View {
    @State var pound: Double = 0
    var body: some View {
        VStack{
            Slider(value: $pound, in: -100...100, step: 0.1)
            Text("\(pound) pound is \(pound * 0.45359237) Kg")
        }
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}
