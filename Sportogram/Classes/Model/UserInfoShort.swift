//
//  UserInfoShort.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 05/10/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation

class UserInfoShort {
    var firstName: String
    var lastName: String
    var birthDate: Date?
    var phoneNumber: String?
    var email: String?
    var userpicUrlSmall: String?
    var userpicUrlBig: String?
    
    init(firstName: String, lastName: String, birthDate: Date?, phoneNumber: String?, email: String?, userpicUrlSmall: String?, userpicUrlBig: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.phoneNumber = phoneNumber
        self.email = email
        self.userpicUrlSmall = userpicUrlSmall
        self.userpicUrlBig = userpicUrlBig
    }
    
    convenience init() {
        self.init(firstName: "", lastName: "", birthDate: nil, phoneNumber: nil, email: nil, userpicUrlSmall: nil, userpicUrlBig: nil)
    }
}
