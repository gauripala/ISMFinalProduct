//
//  SignUpViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 3/12/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleTextFields()
    }
    
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    func styleTextFields() {
        let bottomLine1 = CALayer()
        bottomLine1.frame = CGRect(x: 0, y: fullName.frame.height - 2, width: fullName.frame.width, height: 2)
        bottomLine1.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        fullName.borderStyle = .none
        fullName.layer.addSublayer(bottomLine1)
        
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0, y: email.frame.height - 2, width: email.frame.width, height: 2)
        bottomLine2.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        email.borderStyle = .none
        email.layer.addSublayer(bottomLine2)
        
        let bottomLine3 = CALayer()
        bottomLine3.frame = CGRect(x: 0, y: password.frame.height - 2, width: password.frame.width, height: 2)
        bottomLine3.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        password.borderStyle = .none
        password.layer.addSublayer(bottomLine3)
        
        let bottomLine4 = CALayer()
        bottomLine4.frame = CGRect(x: 0, y: confirmPassword.frame.height - 2, width: confirmPassword.frame.width, height: 2)
        bottomLine4.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        confirmPassword.borderStyle = .none
        confirmPassword.layer.addSublayer(bottomLine4)
    }
    
}
