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
    
    func getCategories() -> [Category]{
        return categories
    }
}
