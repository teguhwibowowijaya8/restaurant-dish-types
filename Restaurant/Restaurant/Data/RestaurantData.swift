//
//  RestaurantData.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 23/02/23.
//

import Foundation

struct RestaurantData {
    static let spanishRestaurant: [Restaurant] = [
        Restaurant(image: "El Pachuco", name: "El Pachuco", briefDescription: "El Pachuco Restaurant Description", price: 15, address: "Carrer de la Lleialtat, \n16 08001 Barcelona", openTimes: OpenTimesData.elPachucoOpenTimes, menus: MenusData.elPachucoMenus, fullDescription: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."),
        Restaurant(image: "Taco Alto Born", name: "Taco Alto Born", briefDescription: "Taco Alto Born Restaurant Description", price: 12, address: "Carrer de la Lleialtat, 16 08001 Barcelona", openTimes: OpenTimesData.elPachucoOpenTimes, menus: MenusData.elPachucoMenus, fullDescription: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."),
        Restaurant(image: "La Taqueria", name: "La Taqueria", briefDescription: "La Taqueria Restaurant Description", price: 13, address: "Carrer de la Lleialtat, 16 08001 Barcelona", openTimes: OpenTimesData.elPachucoOpenTimes, menus: MenusData.elPachucoMenus, fullDescription: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."),
    ]
    
    static let indonesianRestaurant: [Restaurant] = [
        Restaurant(image: "Harmoni Square", name: "Harmoni Square", briefDescription: "Harmoni Square Restaurant and Coffee Shop", price: 20, address: "Jl Hayam Wuruk No 36 37 Central Jakarta Grand Mercure Jakarta Harmoni, Jakarta 10120 Indonesia", openTimes: OpenTimesData.harmoniSquareOpenTimes, menus: MenusData.harmoniSquareMenus, fullDescription: "Penilaian makanan, layanan, harga, atau suasana untuk Harmoni Square Restaurant and Coffee Shop, Indonesia belum cukup. Jadilah orang pertama yang menulis ulasan!"),
        Restaurant(image: "Catappa", name: "Catappa", briefDescription: "Catappa Restaurant Jakarta", price: 15, address: "Jl. H Benyamin Sueb Kav. B6 Grand Mercure Kemayoran, Jakarta 10610 Indonesia", openTimes: OpenTimesData.catappaOpenTimes, menus: MenusData.edoginMenus, fullDescription: """
                   MASAKAN
                   Mediterania, Indonesia, Internasional, Asia
                   DIET KHUSUS
                   Sesuai untuk Vegetarian, Pilihan Vegan, Halal, Pilihan Bebas Gluten
                   MAKANAN
                   Sarapan, Makan Siang, Makan Malam, Brunch
                   FITUR
                   Bawa Pulang, Reservasi, Tempat Duduk, Tersedia Tempat Parkir, Parkir Tervalidasi, Tersedia Kursi Tinggi, Akses Kursi Roda, Menyajikan Alkohol, Bar Lengkap, Wi-Fi Gratis, Pelayanan di Meja
""")
    ]
    
    static let japaneseRestaurants: [Restaurant] = [
        Restaurant(image: "Edogin", name: "Edogin", briefDescription: "Edogin Restaurant Jakarta", price: 50, address: "Jl Asia Afrika No 8 Hotel Mulia Senayan, Jakarta 10270 Indonesia", openTimes: OpenTimesData.edoginOpenTimes, menus: MenusData.edoginMenus, fullDescription: """
MASAKAN
Jepang, Makanan Laut, Sushi
DIET KHUSUS
Pilihan Bebas Gluten
MAKANAN
Makan Malam, Minuman
FITUR
Reservasi, Prasmanan, Makan Malam Pribadi, Tempat Duduk, Tersedia Tempat Parkir, Parkir Tervalidasi, Tersedia Kursi Tinggi, Akses Kursi Roda, Menyajikan Alkohol, Menerima American Express, Menerima Mastercard, Menerima Visa, Pelayanan di Meja, Layanan Valet, Kartu Hadiah Tersedia
"""),
        Restaurant(image: "Furusato Izakaya", name: "Furusato Izakaya", briefDescription: "Furusata Izakaya Restaurant Jakarta", price: 50, address: "Jl. Jend. Sudirman No.36 Sudirman Suites Apartment, Jakarta 10210 Indonesia", openTimes: OpenTimesData.furusatoIzakayaOpenTimes, menus: MenusData.furusatoIzakayaMenus, fullDescription: """
Inspired by beautiful and authentic Izakaya stalls in various
regions in Japan where crowd enjoy a simple washoku cuisines
paired with drinks with colleagues, friends, and families, Furusato
Izakaya redefines how urban diners experience Japanese culinary
fares.

We only use the best ingredients in our dishes and drinks to
showcase our passion towards food and beverage service industry
as well as serve with a friendly attitude to deliver a familiar and
comforting experience at our humble place.

Come and enjoy a relaxing and intimate ambiance with us in the
midst of the hustle and bustle of Jakarta lifestyle.
"""),
    ]
    
}
