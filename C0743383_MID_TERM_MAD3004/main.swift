//
//  main.swift
//  C0743383_MID_TERM_MAD3004
//
//  Created by Daian Aiziatov on 13/09/2018.
//  Copyright © 2018 Daian Aiziatov. All rights reserved.
//

import Foundation

//Crerating 5 products
//First
var p1 = Product(manufacturerId: 34, manufacturerName: "Dell", productID: 23, productName: "Laptop", price: 500.0, quantity: 1)
//Second
var p2 = Product(manufacturerId: 45, manufacturerName: "Apple", productID: 33, productName: "Mouse", price: 50.0, quantity: 3)
//Third
var p3 = Product(manufacturerId: 45, manufacturerName: "Apple", productID: 55, productName: "Screen", price: 300.0, quantity: 1)
//Fourth
var p4 = Product(manufacturerId: 23, manufacturerName: "Google", productID: 66, productName: "Speaker", price: 150.0, quantity: 2)
//Fiveth
var p5 = Product(manufacturerId: 66, manufacturerName: "Amazon", productID: 77, productName: "Socks", price: 2.0, quantity: 5)

//Creating 3 objects of Order class
//1)
var o1 = Order(orderID: 1, productArray: [p1, p2, p3])
//2)
var o2 = Order(orderID: 2, productArray: [p1, p2, p5])
//3)
var o3 = Order(orderID: 3, productArray: [p1, p2, p5, p3, p4])

//Storing all orders in dictionary having order id as keys
var orderDict: Dictionary<Int, Order> = [o1.orderID!: o1, o2.orderID!: o2, o3.orderID!: o3]

//Searching order by its id
Order.dictonaryOfOrders = orderDict
var o4 = Order.getOrderById(id: o1.orderID!)
var o5 = Order.getOrderById(id: o2.orderID!)
var o6 = Order.getOrderById(id: o3.orderID!)

//Displaying all order details - somewhere errored

o2.display()



