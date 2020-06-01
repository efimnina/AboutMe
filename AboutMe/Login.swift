//
//  Login.swift
//  AboutMe
//
//  Created by Нина Ефимова on 01.06.2020.
//  Copyright © 2020 Efim Nina. All rights reserved.
//

struct LoginModel {
    let userName: String
    let password: String
}

extension LoginModel {
    static func getLoginData() -> LoginModel {
        LoginModel(userName: "Nina", password: "1234")
    }
}
