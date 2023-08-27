//
//  RegisterViewController.swift
//  IOSExam
//
//  Created by Criselda Aguilar on 8/28/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var mpinTextField: UITextField!
    @IBOutlet weak var confirmMpinTextField: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func backButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        view.modalPresentationStyle = .fullScreen
        self.present(view, animated: false)
    }
    @IBAction func registerButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.placeholder = "Enter First Name"
        lastNameTextField.placeholder = "Enter Last Name"
        mobileNumberTextField.placeholder = "Enter Mobile Number"
        mpinTextField.placeholder = "Enter MPIN"
        confirmMpinTextField.placeholder = "Confirm MPIN"

    }

}
