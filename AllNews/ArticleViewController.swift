//
//  ArticleViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/28/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import Foundation
import UIKit


// Public variable for the currently selected article so that tapping an article thumbnail can pass its data for the article via a button action
var activeArticle = Article(title: "Some Title", author: "Some Name", date: Date(), body: "Some Text", banner: #imageLiteral(resourceName: "example1"), theme: UIColor(named: "ColorPrimary1")!)

// Controller for the selected article screen where a tapped article can be viewed
class ArticleViewController: UIViewController {
    // All the various fields that need to be populated with the selected articles info
    @IBOutlet weak var ArticleBannerImage: UIImageView!
    @IBOutlet weak var ArticleBannerDivider: UIImageView!
    @IBOutlet weak var ArticleTitleText: UILabel!
    @IBOutlet weak var ArticleAuthorName: UILabel!
    @IBOutlet weak var ArticleDate: UILabel!
    @IBOutlet weak var ArticleBodyText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get a formatter to convert the articles date to a string
        // Date conversion help: https://stackoverflow.com/questions/42524651/convert-nsdate-to-string-in-ios-swift/42524767
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        // Set the title of this screen to that of the currently selected article
        title = activeArticle.title
        
        // Fill in the various fields on this screen with the data from the selected article
        ArticleTitleText.text = activeArticle.title
        self.ArticleTitleText.textColor = activeArticle.theme
        ArticleBannerImage.image = activeArticle.banner
        self.ArticleBannerDivider.backgroundColor = activeArticle.theme
        ArticleAuthorName.text = "By " + activeArticle.author
        ArticleDate.text = "Published " + formatter.string(from: activeArticle.date)
        ArticleBodyText.text = activeArticle.body
    }
    
    // Change the status bar to white so it shows better on the dark background
    // Tutorial Help: https://www.ioscreator.com/tutorials/change-color-status-bar-ios-tutorial
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    // An action that allows the back actions to be performed (the "view more articles" button specifically)
    @IBAction func didPressGoBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
