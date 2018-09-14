//
//  Product.swift
//  C0743383_MID_TERM_MAD3004
//
//  Created by Daian Aiziatov on 13/09/2018.
//  Copyright © 2018 Daian Aiziatov. All rights reserved.
//

import Foundation

class Product: Manufacturer {
    
    var productID: Int?
    var productName: String?
    public var price: Double?
    public var quantity: Int?
    
    init(manufacturerId: Int, manufacturerName: String, productID: Int, productName: String, price: Double, quantity: Int) {
        super.init(manufacturerId: manufacturerId, manufacturerName: manufacturerName)
        self.productID = productID
        self.productName = productName
        self.price = price
        self.quantity = quantity
    }
    
    func calculateTotal() -> Double {
        return price! * Double(quantity!)
    }
    
    override func display() {
        print("Product ID    |    Product Name    |    Price     |     Quantity")
        print("\(productID!)       |       \(productName!)     |      \(price!)         |       \(quantity!)")
        print("Order Total: \(calculateTotal())")
    }
    
}
