//
//  OderDetail.swift
//  Tapioca milk tea
//
//  Created by Tomoharu Kawata on 2020/03/18.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct OderDetail: View {
    var order: OrderEntity
    var body: some View{
        VStack{
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco{
                Text("Nata de coco")
            }
        }
        
    }
}

struct OderDetail_Previews: PreviewProvider {
    static var previews: some View {
        OderDetail(order: orderStore.orders[0])
    }
}
