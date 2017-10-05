//
//  GymnasiumInfo.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 05/10/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation
import MapKit

class GymnasiumInfo {
    var gymnasiumId: Int
    var addressId: Int
    var addressName: String
    var addressString: String
    var addressCoordinates: CLLocation
    var administratorName: String
    var administratorPhone: String
    var administratorEmail: String
    var description: String

    init(gymnasiumId: Int, addressId: Int, addressName: String, addressString: String, addressCoordinates: CLLocation, administratorName: String, administratorPhone: String, administratorEmail: String, description: String) {
        self.gymnasiumId = gymnasiumId
        self.addressId = addressId
        self.addressName = addressName
        self.addressString = addressString
        self.addressCoordinates = addressCoordinates
        self.administratorName = administratorName
        self.administratorPhone = administratorPhone
        self.administratorEmail = administratorEmail
        self.description = description
    }

    convenience init() {
        self.init(gymnasiumId: -1, addressId: -1, addressName: "", addressString: "", addressCoordinates: CLLocation(), administratorName: "", administratorPhone: "", administratorEmail: "", description: "")
    }
}