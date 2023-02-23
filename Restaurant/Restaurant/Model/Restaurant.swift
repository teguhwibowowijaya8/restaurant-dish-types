//
//  Restaurants.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import Foundation

struct Restaurant {
    let image: String
    let name: String
    let briefDescription: String
    let price: Int
    let address: String
    let openTimes: [OpenTime]
    let menus: [Menu]
    let fullDescription: String
}
