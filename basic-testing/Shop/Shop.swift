//
//  Shop.swift
//  basic-testing
//
//  Created by Eliel Gordon on 5/23/18.
//  Copyright © 2018 MakeSchool. All rights reserved.
//

import Foundation

protocol ShopType {
    associatedtype Merchandise
    var products: [Merchandise] {get set}
    var cart: Cart {get set}
    
    func checkout()
}

enum CouponCode: Int {
    case none = 0
    case basic = 5
    case silver = 10
    case gold = 25
}

protocol Cartable {
    associatedtype Item
    var items: [Item] {get set}
    var taxPercent: Int {get set}
    var discountPercent: Int {get set}
    var couponCode: CouponCode {get set}
    
    func checkout()
    // Total line items without tax and coupon
    func subTotal() -> Double
    // Total line items with tax minus discount
    func total() -> Double
    mutating func add(items: Item...)
    func numberOfItems() -> Int
    mutating func addCoupon(code: CouponCode) -> Bool
}

struct LineItem {
    // TODO: Fill me in
    // Should have id, quantity and price and name
    
    // TODO:
    // This is an empty implementation: fill it in
    // Total price of the item
    func total() -> Double {
        return 0.0
    }
}


// TODO: Fill in. Product a shop can sell
// id, name, price
struct Product {}

// TODO: Fill in implementation
struct Cart {}
struct Shop {}

