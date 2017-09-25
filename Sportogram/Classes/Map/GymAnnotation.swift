//
//  GymAnnotation.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 25/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import UIKit
import MapKit

class GymAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var count: Int = 0
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String, count: Int) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.count = count
    }
}
