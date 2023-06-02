//
//  Product.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import Foundation

struct Product: Identifiable{
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: CategoryType
    var image: String
}
enum CategoryType: String, CaseIterable{
    case electronics = "electronics"
    case jewelery = "jewelery"
    case men = "men's clothing"
    case women = "women's clothing"
}
