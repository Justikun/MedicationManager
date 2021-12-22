//
//  DateFormatter.swift
//  MedicationManager
//
//  Created by Justin Lowry on 12/20/21.
//

import Foundation

extension DateFormatter {
    static let medicationTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        return formatter
    }()
}
