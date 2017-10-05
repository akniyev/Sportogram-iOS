//
//  MapItem.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 26/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation
import MapKit

class MapItem {
    var coordinates : CLLocation? = nil
    var gymnasiums : [GymnasiumShortInfo] = []

    init(coordinates: CLLocation?, gymnasiums: [GymnasiumShortInfo]) {
        self.coordinates = coordinates
        self.gymnasiums = gymnasiums
    }
    
    convenience init() {
        self.init(coordinates: nil, gymnasiums: [])
    }
}
