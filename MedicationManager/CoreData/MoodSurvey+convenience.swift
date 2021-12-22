//
//  MoodSurvey+convenience.swift
//  MedicationManager
//
//  Created by Justin Lowry on 12/21/21.
//

import CoreData

extension MoodSurvey {
    @discardableResult convenience init(mentalState: String, date: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.mentalState = mentalState
        self.date = date
    }
}
