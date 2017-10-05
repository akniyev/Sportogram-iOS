//
//  GymModel.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 26/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation

class GymnasiumShortInfo {
    var gymnasiumId = -1
    var addressId = -1
    var addressName = ""
    var addressString = ""
    
    init(id gymnasiumId: Int, addressId: Int, addressName: String, addressString: String) {
        self.gymnasiumId = gymnasiumId
        self.addressId = addressId
        self.addressName = addressName
        self.addressString = addressString
    }
    
    convenience init() {
        self.init(id: -1, addressId: -1, addressName: "", addressString: "")
    }
}
