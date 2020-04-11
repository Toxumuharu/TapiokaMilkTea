//
//  SliderLabelExample2.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct SliderLabelExample2: View {
    @State var pound: Double = 0
    @State var isChanged = false
    
    var body: some View {
        VStack{
            Slider(value: $pound, in: -100...100, step: 0.1,
                   onEditingChanged: {changed in self.isChanged = changed
                    },
                   minimumValueLabel: Text("-100"),
                   maximumValueLabel: Text("100"),
                label: {EmptyView() })
            
            if !isChanged {
                Text("\(pound) pound is \(pound * 0.45359237) Kg")
            }else{
                Text("\(pound)")
            }
        }.padding()
    }
}

struct SliderLabelExample2_Previews: PreviewProvider {
    static var previews: some View {
        SliderLabelExample2()
    }
}
