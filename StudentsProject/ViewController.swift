//
//  ViewController.swift
//  StudentsProject
//
//  Created by Noye Samuel on 21/11/2022.
//

import UIKit



class ViewController: UIViewController {

    // MARK: - IBActions

    @IBOutlet weak var IdTxtField: UITextField!
    @IBOutlet weak var ageTxtField: UITextField!
    @IBOutlet weak var schTxtField: UITextField!
    @IBOutlet weak var savBtn: UIButton!
    @IBOutlet weak var errorLbl: UILabel!
    
     var errorTxt = ""
     var viewModel = StudentViewModel()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveAction(_ sender: Any) {
        errorLbl.alpha = 0
        saveStudent()
    }
    
    
    func saveStudent(){
        do {
            try viewModel.validateStudent(age: ageTxtField.text  ?? "",
                                        id: IdTxtField.text ?? "",
                                       sch: schTxtField.text ?? "")
            errorLbl.alpha = 0
            print("Success! Yum.")
        } catch ValidateType.emptyFields {
            errorLbl.alpha = 1
            errorLbl.text = TextsInUse.EmptyFields
        } catch ValidateType.notNumber {
            errorLbl.alpha = 1
            errorLbl.text = TextsInUse.NotNumber
        } catch ValidateType.notSaved {
            errorLbl.alpha = 1
            errorLbl.text = TextsInUse.Empty
        } catch {
            print("Unexpected error: \(error).")
        }
    }
}

extension String {
    var isNumber: Bool {
        let range = self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted)
        return (range == nil)
    }
}


