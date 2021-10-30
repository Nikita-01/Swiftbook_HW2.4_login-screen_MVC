//
//  InfoViewController.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 30.10.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var personalInfoLabel: UILabel!
    
    var personalInfo: [String] = []
    var hobby: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalInfoLabel.text = "\(personalInfo.joined(separator: "\n"))\nhobby: \(hobby.joined(separator:", "))"
        
    }
    

    

}
