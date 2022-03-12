//
//  LoginViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 3/11/22.
//

import UIKit

class LoginViewController: UIViewController {
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        styleLoginBtn()
        styleTextFields()
    }
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    var gradientLayer: CAGradientLayer!
    
    
    func styleLoginBtn() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = loginBtn.bounds
        gradientLayer.colors = [UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor,UIColor(red: 0.4, green: 0.2, blue: 0.6, alpha: 1).cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.98, b: -0.17, c: 0.17, d: 24.58, tx: -0.06, ty: -11.62))
        gradientLayer.bounds = loginBtn.bounds.insetBy(dx: -0.5*loginBtn.bounds.size.width, dy: -0.5*loginBtn.bounds.size.height)
        gradientLayer.position = loginBtn.layer.position
        loginBtn.layer.masksToBounds = true;
        loginBtn.layer.addSublayer(gradientLayer)
        loginBtn.layer.cornerRadius = 26
    }
    
    func styleTextFields() {
        
        let bottomLine1 = CALayer()
        bottomLine1.frame = CGRect(x: 0, y: username.frame.height - 2, width: username.frame.width, height: 2)
        bottomLine1.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        username.borderStyle = .none
        username.layer.addSublayer(bottomLine1)
        
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0, y: password.frame.height - 2, width: password.frame.width, height: 2)
        bottomLine2.backgroundColor = UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor
        password.borderStyle = .none
        password.layer.addSublayer(bottomLine2)
    }
}
