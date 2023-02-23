//
//  RestaurantMenusData.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 23/02/23.
//

import Foundation

struct MenusData {
    
    // MARK: Spanish Cuisine Restaurants Menus
    static let elPachucoMenus = [
        Menu(name: "The Fried Chicken Bun Bun Bun", price: 12),
        Menu(name: "Tacos Criollo", price: 9),
        Menu(name: "Gringa Pancakes", price: 8),
    ]
    
    // MARK: Indonesian Cuisine Restaurants Menus
    static let harmoniSquareMenus = [
        Menu(name: "Indomie Goreng", price: 3),
        Menu(name: "Ayam Panggang Utuh", price: 20)
    ]
    
    static let catappaMenus = [
        Menu(name: "Nasi Goreng", price: 7),
        Menu(name: "Ayam Bumbu Rujak", price: 18),
        Menu(name: "Rendang Rujak Ala Catappa", price: 30)
    ]
    
    
    // MARK: Japanese Cuisine Restaurants Menus
    static let edoginMenus = [
        Menu(name: "Sushi Mentai", price: 3),
        Menu(name: "Pizza Salmon", price: 20),
        Menu(name: "Ice Cream Mochi", price: 5),
        Menu(name: "Agedashi Tofu", price: 10),
        Menu(name: "Sushi Telor", price: 5)
    ]
    
    static let furusatoIzakayaMenus = [
        Menu(name: "Tofuto Nasuno Misoyaki", price: 5),
        Menu(name: "Cream Cheese Okaka", price: 4),
        Menu(name: "Agedashi Mochi", price: 5),
        Menu(name: "Agedashi Tofu", price: 5),
        Menu(name: "Beef Goyoza", price: 7)
    ]
}
