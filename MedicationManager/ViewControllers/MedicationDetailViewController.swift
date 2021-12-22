//
//  MedicationDetailViewController.swift
//  MedicationManager
//
//  Created by Justin Lowry on 12/20/21.
//

import UIKit

class MedicationDetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var medication: Medication?
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        if let medication = medication,
           let timeOfDay = medication.timeOfDay {
            title = "Medication Details"
            nameTextField.text = medication.name
            datePicker.date = timeOfDay
        } else {
            title = "Add Medication"
        }
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text,
              !name.isEmpty
        else { return }
        let date = datePicker.date
        
        if let medication = medication {
            MedicationController.shared.updateMedication(medication: medication, name: name, timeOfDay: date)
        } else {
            MedicationController.shared.create(name: name, timeOfDay: date)
        }
        navigationController?.popViewController(animated: true)
    }
}
