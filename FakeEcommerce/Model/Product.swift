//
//  Product.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import Foundation

struct Product: Identifiable,Codable{
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: String
    var image: String
}
extension Product {
    static var sampleProducts: [Product] {
        let response: [Product]? = try? Bundle.main.loadAndDecodeJSON(filename: "products")
        return response ?? [Product(id: 1, title: "noproduct", price: 10.5, description: "noproduct", category: "noproduct", image: "noproduct")]
    }
}
