//
//  DataService.swift
//  coder-swag
//
//  Created by Sergey Neupokoev on 5/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import Foundation

class dataService {
    static let instance = dataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie White", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Gray", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch  title {
        case "shirts":
            return getShirts()
        case "hats":
            return getHats()
        case "hoodies":
            return getHats()
        case "digitalGoods":
            return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
