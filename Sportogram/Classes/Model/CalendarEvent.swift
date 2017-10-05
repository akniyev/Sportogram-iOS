//
//  CalendarEvent.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 05/10/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation

class CalendarEvent {
    var eventId: Int
    var trainingId: Int
    var gymnasiumId: Int
    var addressId: Int
    var gymnasiumName: String
    var addressName: String
    var trainingDateTime: Date
    
    init(eventId: Int, trainingId: Int, gymnasiumId: Int, addressId: Int, addressName: String, gymnasiumName: String, trainingDateTime: Date) {
        self.eventId = eventId
        self.trainingId = trainingId
        self.gymnasiumId = gymnasiumId
        self.addressId = addressId
        self.addressName = addressName
        self.gymnasiumName = gymnasiumName
        self.trainingDateTime = trainingDateTime
    }

    convenience init() {
        self.init(eventId: -1, trainingId: -1, gymnasiumId: -1, addressId: -1, addressName: "", gymnasiumName: "", trainingDateTime: Date())
    }
}
