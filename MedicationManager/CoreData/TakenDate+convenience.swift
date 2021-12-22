//
//  TakenDate+convenience.swift
//  MedicationManager
//
//  Created by Justin Lowry on 12/21/21.
//

import CoreData

extension TakenDate {
    @discardableResult convenience init(date: Date, medication: Medication, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.date = date
        self.medication = medication
    }
}
