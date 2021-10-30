//
//  AboutProjectViewController.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 30.10.2021.
//

import UIKit

class AboutProjectViewController: UIViewController {

    @IBOutlet var rememberLabel: UILabel!
    
    var realName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rememberLabel.text = "Do not forget, your name is \(realName)!"
        
    }
    

   
}
