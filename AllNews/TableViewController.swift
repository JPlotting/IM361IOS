//
//  TableViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/29/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import Foundation
import UIKit

struct Article {
    let title: String
    let author: String
    let date: Date
    let body: String
    let banner: UIImage
}

class TableViewController: UITableViewController {
    let data = [
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1")),
        Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "jakob the snakob"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else {
            fatalError("No cell available")
        }
        
        let article = data[indexPath.row]
        
        cell.articleThumbnail.titleLabel?.text = article.title
        cell.BgImageView.image = article.banner
        
        return cell
    }
}
