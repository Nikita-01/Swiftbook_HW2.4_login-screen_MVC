//
//  SwiftProjectsViewController.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 30.10.2021.
//

import UIKit

class SwiftProjectsViewController: UIViewController {

    @IBOutlet var iosProjectsLabel: UILabel!
    
    var projects: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iosProjectsLabel.text = projects.joined(separator: "\n")
        
    }
    

   

}
