//
//  Category.swift
//  coder-swag
//
//  Created by Sergey Neupokoev on 5/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init (title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
