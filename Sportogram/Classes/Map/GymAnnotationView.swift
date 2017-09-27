//
//  GymAnnotationView.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 25/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import UIKit
import MapKit

class GymAnnotationView: MKAnnotationView {    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        guard let attractionAnnotation = self.annotation as? GymAnnotation else { return }
        
//        let badge = UILabel()
//        badge.text = "+\((self.annotation as? GymAnnotation)?.count ?? 0)"
//        badge.frame = self.bounds
//        
//        self.addSubview(badge)
        
        self.image = #imageLiteral(resourceName: "location-icon-blue")
    }
}
