//
//  LoginViewController.swift
//  IOSExam
//
//  Created by Criselda Aguilar on 8/27/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var mpinTextField: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func backButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        view.modalPresentationStyle = .fullScreen
        self.present(view, animated: false)
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBorderStyle(mobileNumberTextField)
        setBorderStyle(mpinTextField)
        
        mobileNumberTextField.delegate = self
        mpinTextField.delegate = self
        mobileNumberTextField.placeholder = "Enter Mobile Number"
        mpinTextField.placeholder = "Enter MPIN"
    }
    
    
    /// Set the textfield boarders to only have bottom border
    func setBorderStyle(_ textField: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0,
                                  y: textField.frame.height + 2.0,
                                  width: textField.frame.width,
                                  height: 1.5)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        textField.borderStyle = .none
        textField.layer.addSublayer(bottomLine)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    /// Only accept numbers for the mobileNumberTextField
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == mobileNumberTextField {
            let allowedCharacterSet = CharacterSet(charactersIn: "0123456789")
            let replacementStringIsValid = string.rangeOfCharacter(from: allowedCharacterSet.inverted) == nil
            return replacementStringIsValid
        }
        return true
    }
    
    /// Remove placeholder text on first tap
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == textField.placeholder {
            textField.text = ""
        }
    }
    
    /// Dismiss keyboard when `return` is tapped
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
