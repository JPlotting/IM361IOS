//
//  TableViewCell.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/29/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import Foundation
import UIKit


// Script that controls the tappable behavior of each article preview in the suggestion and discover content sections
class TableViewCell: UITableViewCell {
    // References to the thumbnail image and button for this article preview
    @IBOutlet weak var articleThumbnail: UIButton!
    @IBOutlet weak var BgImageView: UIImageView!
    
    // Article data initialized to defaults on creation and then filled by the table view controller upon loading
    var thisArticle = Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1"), theme: UIColor(named: "ColorPrimary1")!)
    
    // Pass this articles data along to the article viewer so that it can populate its fields once it loads
    @IBAction func didTapArticle(_ sender: Any) {
        activeArticle = thisArticle
    }
}
