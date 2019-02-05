//
//  ViewController.swift
//  coder-swag
//
//  Created by Sergey Neupokoev on 5/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category =  dataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }


}

