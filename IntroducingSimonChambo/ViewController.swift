//
//  ViewController.swift
//  IntroducingSimonChambo
//
//  Created by Simon Chambo on 8/26/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var YearSegmentController: UISegmentedControl!
    @IBOutlet weak var NumberOfPets: UILabel!
    @IBOutlet weak var PetsStepper: UIStepper!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBAction func YearSeg(_ sender: Any) {
    }
    @IBAction func PetStep(_ sender: UIStepper) {
        NumberOfPets.text = "\(Int(sender.value))"
    }
    @IBAction func MorePets(_ sender: Any) {
    }
    
    @IBAction func IntroduceYourselftapped(_ sender: UIButton) {
        let year = YearSegmentController.titleForSegment(at: YearSegmentController.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and I own \(NumberOfPets.text!) pets. It is \(MorePetsSwitch.isOn) that I want more pets."
               
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
