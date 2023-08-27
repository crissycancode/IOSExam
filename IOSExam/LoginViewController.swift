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
        // Do any additional setup after loading the view.
    }

}
