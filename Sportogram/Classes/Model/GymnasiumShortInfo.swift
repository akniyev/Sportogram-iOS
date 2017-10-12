//
//  GymModel.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 26/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation

class GymnasiumShortInfo {
    var gymnasiumId: Int
    var gymnasiumName: String
    var addressId: Int
    var addressName: String
    var addressString: String
    var distanceFromTheUserInMeters: Int
    
    init(id gymnasiumId: Int, gymnasiumName: String, addressId: Int, addressName: String, addressString: String, distanceFromTheUserInMeters: Int) {
        self.gymnasiumId = gymnasiumId
        self.gymnasiumName = gymnasiumName
        self.addressId = addressId
        self.addressName = addressName
        self.addressString = addressString
        self.distanceFromTheUserInMeters = distanceFromTheUserInMeters
    }
    
    convenience init() {
        self.init(id: -1, gymnasiumName: "", addressId: -1, addressName: "", addressString: "", distanceFromTheUserInMeters: -1)
    }
}
