//
//  ViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/10/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewToggle: UISwitch!
    var isSequeAllowed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set title manually because the option under "view controller doesn't work?"
        title = "Suggested Articles"
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "browseArticles":
            if (isSequeAllowed) {
                print("-Different Articles- are viewable!")
                return true
            } else {
                print("-Suggested Articles- are under construction!")
                return false
            }
        default:
            print("Why you no view any articles?")
            return true
        }
    }
    
    @IBAction func didPressSwitch(_ sender: Any) {
        isSequeAllowed = !isSequeAllowed
        
        if (isSequeAllowed) {
            title = "Different Articles"
        } else {
            title = "Suggested Articles"
        }
    }
}

