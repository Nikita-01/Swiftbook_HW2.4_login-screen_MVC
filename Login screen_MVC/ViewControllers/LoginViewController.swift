//
//  LoginViewController.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 30.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = ""
        userPasswordTF.text = ""
        
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTF.text != Person.getPerson().userName || userPasswordTF.text != Person.getPerson().userPassword {
            let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { _ in
                self.userNameTF.text = ""
                self.userPasswordTF.text = ""
            }
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        let alert = UIAlertController(title: "Oops", message: "User Name is \(Person.getPerson().userName)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.userPasswordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPassworgPressed() {
        let alert = UIAlertController(title: "Oops", message: "Password is \(Person.getPerson().userPassword)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.userPasswordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
        for viewController in viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.realName = Person.getPerson().realName
            } else if let navigationVC = viewController as? UINavigationController {
                if let aboutUserVC = navigationVC.topViewController as? InfoViewController {
                    aboutUserVC.personalInfo = Person.getPerson().information
                    aboutUserVC.hobby = Person.getPerson().hoddy
                } else if let projectsVC = navigationVC.topViewController as? SwiftProjectsViewController {
//                    projectsVC.projects = Person.getPerson().projects
                    projectsVC.projects = ["-------"]
                    }
                
        } else if let aboutProjectVC = viewController as? AboutProjectViewController {
                    aboutProjectVC.realName = Person.getPerson().realName
                }
                
            }
        }
    @IBAction func unwind(for: UIStoryboardSegue, sender: Any?) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            userPasswordTF.becomeFirstResponder()}
        else if textField == userPasswordTF {
            loginButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
    
}
