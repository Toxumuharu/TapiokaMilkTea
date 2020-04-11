//
//  PickerExample.swift
//  Tapioca milk tea
//
//  Created by Toxumuharu on 2020/04/06.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct PickerExample: View {
    @State var weather = 1
    
    var body: some View {
        Picker(selection: $weather,
               label: Text("Weather : \(weather)")){
                Text("Sunny").tag(1)
                Text("Cloudy").tag(2)
                Text("Rainy").tag(3)
        }
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
