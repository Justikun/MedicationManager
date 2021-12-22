//
//  MoodSurveyViewController.swift
//  MedicationManager
//
//  Created by Justin Lowry on 12/21/21.
//

import UIKit

protocol MoodSurveyViewControllerDelegate: AnyObject {
    func moodButtonTapped(with emoji: String)
}

class MoodSurveyViewController: UIViewController {
    // MARK: - Properties
    weak var delegate: MoodSurveyViewControllerDelegate?
    
    
    // MARK: - Actions
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func emojiTapped(_ sender: UIButton) {
        guard let emoji = sender.titleLabel?.text else { return }
        delegate?.moodButtonTapped(with: emoji)
        self.dismiss(animated: true, completion: nil)
    }
}
