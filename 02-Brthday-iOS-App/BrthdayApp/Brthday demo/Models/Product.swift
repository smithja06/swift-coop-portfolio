//
//  Product.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-31.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Liquorice Quarter-Zip - Virgo", image: "liquoriceQuarterZip-Virgo", price: 239),
                   Product(name: "Noir Crewneck - Virgo", image: "noirCrewneck-Virgo", price: 219),
                   Product(name: "Noir Hoodie - Ultra Ego", image: "noirHoodie-UltraEgo", price: 249),
                   Product(name: "Watermelon Crewneck", image: "watermelonCrewneck", price: 219),
                   Product(name: "Liquorice Crewneck - Libra", image: "liquoriceCrewneck-Libra", price: 219),
                   Product(name: "Cookies & Cream Crew neck - Libra", image: "cookies&CreamCrewneck-Libra", price: 219),
                   Product(name: "Black Cherry Crewneck - Virgo" , image: "blackCherryCrewneck-Virgo", price: 219),
                   Product(name: "Red Velvet Hoodie - Virgo" , image: "redVelvetHoodie-Virgo", price: 249),
                   Product(name: "Black Cherry Hoodie - Libra", image: "blackCherryHoodie-Libra", price: 249),
                   Product(name: "Grape Hoodie - Virgo", image: "grapeHoodie-Virgo", price: 249),
                   Product(name: "Liquorice Hoodie - Onyx", image: "liquoriceHoodie-Onyx", price: 249),
                   Product(name: "Cookies & Cream Quarter-Zip - Libra", image: "cookies&CreamQuarterZip-Libra", price: 249),
                   Product(name: "Cookies & Cream Hoodie - Libra", image: "cookies&CreamHoodie-Libra", price: 249),
                   Product(name: "Liquorice Hoodie - Halloween 2018", image: "liquoriceHoodie-Halloween2018", price: 499),
                   Product(name: "Noir Button Up - Virgo", image: "noirButtonUp-Virgo", price: 239),
                   Product(name: "Grey Quarter-Zip - Libra", image: "greyQuarterZip-Libra", price: 239),
                   Product(name: "Grey Hoodie - Libra", image: "greyHoodie-Libra", price: 249),
                   Product(name: "White Chocolate Hoodie - Libra", image: "whiteChocolateHoodie-Libra", price: 249),
                   Product(name: "Grey Crewneck - Virgo", image: "greyCrewneck-Virgo", price: 219),
                   Product(name: "Oatmeal Quarter-Zip - Libra", image: "oatmealQuarterZip-Libra", price: 239),
                   Product(name: "Cookies & Cream Quarter-Zip - Virgo", image: "cookies&CreamQuarterZip-Virgo", price: 239),
                   Product(name: "Olive Button Up - 8th Jinchuriki", image: "oliveButtonUp-8thJinchuriki", price: 239),
                   Product(name: "Strawberry Quarter-Zip - Libra", image: "strawberryQuarterZip-Libra", price: 239),
                   Product(name: "Liquorice Hoodie - White Beard", image: "liquoriceHoodie-WhiteBeard", price: 249),
]

var productListHoodies = [Product(name: "Noir Hoodie - Ultra Ego", image: "noirHoodie-UltraEgo", price: 249),
                          Product(name: "Red Velvet Hoodie - Virgo" , image: "redVelvetHoodie-Virgo", price: 249),
                          Product(name: "Black Cherry Hoodie - Libra", image: "blackCherryHoodie-Libra", price: 249),
                          Product(name: "Grape Hoodie - Virgo", image: "grapeHoodie-Virgo", price: 249),
                          Product(name: "Liquorice Hoodie - Onyx", image: "liquoriceHoodie-Onyx", price: 249),
                          Product(name: "Cookies & Cream Hoodie - Libra", image: "cookies&CreamHoodie-Libra", price: 249),
                          Product(name: "Liquorice Hoodie - Halloween 2018", image: "liquoriceHoodie-Halloween2018", price: 499),
                          Product(name: "Grey Hoodie - Libra", image: "greyHoodie-Libra", price: 249),
                          Product(name: "White Chocolate Hoodie - Libra", image: "whiteChocolateHoodie-Libra", price: 249),
                          Product(name: "Liquorice Hoodie - White Beard", image: "liquoriceHoodie-WhiteBeard", price: 249),
]

var productListTShirts = [Product(name: "Holiday 2022 Black T-Shirt", image: "popular_1", price: 50)
]

var productListCrewnecks = [Product(name: "Noir Crewneck - Virgo", image: "noirCrewneck-Virgo", price: 219),
                            Product(name: "Watermelon Crewneck", image: "watermelonCrewneck", price: 219),
                            Product(name: "Liquorice Crewneck - Libra", image: "liquoriceCrewneck-Libra", price: 219),
                            Product(name: "Cookies & Cream Crew neck - Libra", image: "cookies&CreamCrewneck-Libra", price: 219),
                            Product(name: "Black Cherry Crewneck - Virgo" , image: "blackCherryCrewneck-Virgo", price: 219),
                            Product(name: "Grey Crewneck - Virgo", image: "greyCrewneck-Virgo", price: 219)
]

var productListButtonUps = [Product(name: "noir ButtonUp - Virgo", image: "noirButtonUp-Virgo", price: 239),
                            Product(name: "Olive ButtonUp - 8th Jinchuriki", image: "oliveButtonUp-8thJinchuriki", price: 239)
]

var productListQuarterZips = [Product(name: "Liquorice Quarter-Zip - Virgo", image: "liquoriceQuarterZip-Virgo", price: 239),
                              Product(name: "Cookies & Cream Quarter-Zip - Libra", image: "cookies&CreamQuarterZip-Libra", price: 249),
                              Product(name: "Grey Quarter-Zip - Libra", image: "greyQuarterZip-Libra", price: 239),
                              Product(name: "Oatmeal Quarter-Zip - Libra", image: "oatmealQuarterZip-Libra", price: 239),
                              Product(name: "Cookies & Cream Quarter-Zip - Virgo", image: "cookies&CreamQuarterZip-Virgo", price: 239),
                              Product(name: "Strawberry Quarter-Zip - Libra", image: "strawberryQuarterZip-Libra", price: 239)
]

var popularList = [Product(name: "Holiday 2022 Black T-Shirt", image: "popular_1", price: 50),
                   Product(name: "Marshmallow Hoodie - Virgo", image: "popular_2", price: 249),
                   Product(name: "White Chocolate Hoodie - Virgo", image: "popular_3", price: 249)
]

