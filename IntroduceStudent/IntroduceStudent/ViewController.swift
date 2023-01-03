//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Emily Park on 12/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberofPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
}
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
            numberofPetsLabel.text = "\(Int(sender.value))"
        }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
    
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberofPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
       // print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
        
    }
        
        
    }



