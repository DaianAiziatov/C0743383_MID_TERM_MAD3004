//
//  Order.swift
//  C0743383_MID_TERM_MAD3004
//
//  Created by Daian Aiziatov on 13/09/2018.
//  Copyright © 2018 Daian Aiziatov. All rights reserved.
//

import Foundation

class Order: IDisplay {
    
    var orderID: Int?
    let orderDate = Calendar.current
    public var productArray: [Product]
    public var orderTotal: Double
    {
        var k: Double = 0
        for p in self.productArray
        {
            k = k + (p.price! * Double(p.quantity!))
        }
        return k
    }
    
    static var dictonaryOfOrders: Dictionary<Int, Order> = Dictionary<Int, Order>()
    
    init(orderID: Int, productArray: [Product]) {
        self.orderID = orderID
        self.productArray = productArray
    }
    
    
    static func getOrderById(id: Int) -> Order
    {
        return Order.dictonaryOfOrders[id]!
    }
    
    func display() {

        print("Product ID    |    Product Name    |    Price     |     Quantity")
        for i in self.productArray {
            print("\(i.productID!)       |       \(i.productName!)     |      \(i.price!)         |       \(i.quantity!)")
        }
        print("Order Total: \(orderTotal)")

        //print(orderID!, productArray)
    }
    
}
