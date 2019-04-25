//
//  ViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/10/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import UIKit

struct Article {
    let title: String
    let author: String
    let date: Date
    let body: String
}

class ViewController: UIViewController {

    @IBOutlet weak var ClickMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Some title"
    }


}

