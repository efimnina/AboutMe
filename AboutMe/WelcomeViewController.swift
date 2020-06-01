//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Нина Ефимова on 01.06.2020.
//  Copyright © 2020 Efim Nina. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    var loginData: LoginModel?
    @IBOutlet var welcomeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(loginData?.userName ?? "no name")"
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
