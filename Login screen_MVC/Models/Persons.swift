//
//  Persons.swift
//  Login screen_MVC
//
//  Created by Никита Рыжкин on 29.10.2021.
//

import Foundation

struct Person {
    var userName: String
    var userPassword: String
    var realName: String
    var information: [Information: String]
    var hoddy: [String]
    var projects: [String]
}

enum Information: String {
    case height = "180"
    case weight = "75"
    case eyeColor = "brown"
    case footSize = "42"
}

extension Person {
    static func getPerson() -> Person {
        return Person(userName: "User",
                      userPassword: "Password",
                      realName: "Ivan Petrov",
                      information: [
                        .height: Information.height.rawValue,
                        .weight: Information.weight.rawValue,
                        .eyeColor: Information.eyeColor.rawValue,
                        .footSize: Information.footSize.rawValue
                      ],
                      hoddy: ["Sport", "Music", "Art"],
                      projects: ["Color change", "ColorMIX", "Login screen"])
    }
}
