//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by keenan ray on 1/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var morePetsStepper: UIStepper!
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var schoolNameTextField: UITextField!
    
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var numberOfPetsLabel: UILabel!
    
    @IBOutlet var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
      
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently \(ageTextField.text!) years old. I am in my \(year!) year and I own \(numberOfPetsLabel.text!) dog(s). It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ChangeBackroundColorTapped(_ sender: UIButton) {
        view.backgroundColor = UIColor.random()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

