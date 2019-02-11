//
//  ProductCellCollectionViewCell.swift
//  coder-swag
//
//  Created by Sergey Neupokoev on 9/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
