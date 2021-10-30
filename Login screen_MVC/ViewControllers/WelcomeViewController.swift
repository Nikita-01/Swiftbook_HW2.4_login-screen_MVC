//
//  WelcomeViewController.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 30.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var realName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(realName)!"
       
    }
    

 

}
