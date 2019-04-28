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

    @IBOutlet weak var viewToggle: UISwitch!
    var isSequeAllowed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "Some title"
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "articleView":
            if isSequeAllowed {
                print("Now viewing the article!")
                return true
            } else {
                print("Toggle switch should be active first!")
                return false
            }
        default:
            print("Why you no view the article?")
            return true
        }
    }
    
    @IBAction func didPressSwitch(_ sender: Any) {
        isSequeAllowed = !isSequeAllowed
    }
}

