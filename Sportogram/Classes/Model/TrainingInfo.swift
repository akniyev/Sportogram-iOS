//
//  TrainingInfo.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 05/10/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import Foundation

class TrainingInfo {
    var trainingId: Int
    var trainingDateTime: Date
    var trainingDurationInMinutes: Int
    var participants: [UserInfoShort]
    
    init(trainingId: Int, trainingDateTime: Date, trainingDurationInMinutes: Int, participants: [UserInfoShort]) {
        self.trainingId = trainingId
        self.trainingDateTime = trainingDateTime
        self.trainingDurationInMinutes = trainingDurationInMinutes
        self.participants = participants
    }
    
    convenience init() {
        self.init(trainingId: -1, trainingDateTime: Date(), trainingDurationInMinutes: -1, participants: [])
    }
}
