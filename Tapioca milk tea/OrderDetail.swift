//
//  OderDetail.swift
//  Tapioca milk tea
//
//  Created by Tomoharu Kawata on 2020/03/18.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct OrderDetail: View {
    var order: OrderEntity
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View{
        VStack{
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco{
                Text("Nata de coco")
            }
            if order.iceCream != 0 {
                Text(order.iceCreamName)
            }
            Text(order.other)
            Text(self.dateFormatter.string(from: order.date))
                .font(.caption)
        }
    }
}

struct OderDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{//add several previews
            OrderDetail(order: orderStore.orders[0])
            OrderDetail(order: orderStore.orders[1])
        }
    }
}
