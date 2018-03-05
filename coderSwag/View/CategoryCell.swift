//
//  CategoryCell.swift
//  coderSwag
//
//  Created by Ahmed Eid on 04/01/2018.
//  Copyright © 2018 Ahmed Eid. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
  @IBOutlet weak var img: UIImageView! //uiimageview and not just uiimage
  @IBOutlet weak var title: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    let f = contentView.frame
    // third one seem to be the bottom margin
    let fr = UIEdgeInsetsInsetRect(f, UIEdgeInsetsMake(0, 0, 5, 0))
    contentView.frame = fr
  }
  
  // you pass it a ctegory and it populates its fields with the category data
  func updateViews(category: Category){
    img.image = UIImage(named: category.image )
    title.text = category.title
  }
}
