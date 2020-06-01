//
//  ViewController.swift
//  AboutMe
//
//  Created by Нина Ефимова on 31.05.2020.
//  Copyright © 2020 Efim Nina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBAction func showPasswordButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Forgot?", message: "Your password is \(LoginModel.getLoginData().password)😹", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showUserNameButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Forgot?", message: "Your name is \(LoginModel.getLoginData().userName)😸", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTF.text == LoginModel.getLoginData().userName &&
            passwordTF.text == LoginModel.getLoginData().password {
            let tabBarController = segue.destination as! UITabBarController
            let destinationVC = tabBarController.viewControllers?.first as! WelcomeViewController
            
            destinationVC.loginData = LoginModel(userName: userNameTF.text!, password: passwordTF.text!)
        } else {
            let alert = UIAlertController(title: "Error", message: "Wrong login or password! Enter the correct data", preferredStyle: .alert)
            let okB = UIAlertAction(title: "OK", style: .cancel, handler: .none)
            alert.addAction(okB)
            self.present(alert, animated: true, completion: .none)
            
        }
    }
}

