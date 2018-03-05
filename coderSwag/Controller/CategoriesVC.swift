//
//  ViewController.swift
//  coderSwag
//
//  Created by Ahmed Eid on 04/01/2018.
//  Copyright © 2018 Ahmed Eid. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var categoryTable: UITableView!
  let ds = DataService.instance

  override func viewDidLoad() {
    super.viewDidLoad()
    categoryTable.delegate = self
    categoryTable.dataSource = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ds.getCategories().count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
      let category = ds.getCategories()[indexPath.row]
      cell.updateViews(category: category)
      return cell
    }else{
      return UITableViewCell()
    }
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150.00
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "products", sender: self)
  }
  
}

