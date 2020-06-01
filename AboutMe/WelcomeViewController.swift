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
}
