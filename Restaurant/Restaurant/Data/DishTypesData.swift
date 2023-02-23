//
//  RestaurantPalaceData.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import Foundation

struct DishTypesData {
    static let dishTypes = [
        DishType(name: "Spanish", iconName: "ForkKnife", restaurants: RestaurantData.spanishRestaurant),
        DishType(name: "Indonesian", iconName: "ForkKnife", restaurants: RestaurantData.indonesianRestaurant),
        DishType(name: "Japanese", iconName: "ForkKnife", restaurants: RestaurantData.japaneseRestaurants),
    ]
}
