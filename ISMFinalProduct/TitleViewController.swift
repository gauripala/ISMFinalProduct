//
//  ViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 2/17/22.
//

import UIKit

class TitleViewController: UIViewController {

    var gradientLayer: CAGradientLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        styleLoginButton()

    }
    @IBOutlet weak var login: UIButton!
    
    
    func styleLoginButton() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = login.bounds
        gradientLayer.colors = [UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor,UIColor(red: 0.4, green: 0.2, blue: 0.6, alpha: 1).cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.98, b: -0.17, c: 0.17, d: 24.58, tx: -0.06, ty: -11.62))
        gradientLayer.bounds = login.bounds.insetBy(dx: -0.5*login.bounds.size.width, dy: -0.5*login.bounds.size.height)
        gradientLayer.position = login.layer.position
        login.layer.masksToBounds = true;
        login.layer.addSublayer (gradientLayer);
        login.layer.cornerRadius = 38;
       
//        login.setTitle("Login", for: .normal)
//        login.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center;
//        login.titleLabel?.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
//        login.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 25)!

    }


//    let layer0 = CAGradientLayer()
//
//    layer0.colors = [UIColor(red: 0.251, green: 0.4, blue: 0.878, alpha: 1).cgColor,UIColor(red: 0.4, green: 0.2, blue: 0.6, alpha: 1).cgColor]
//
//    layer0.locations = [0, 1]
//
//    layer0.startPoint = CGPoint(x: 0.25, y: 0.5)
//
//    layer0.endPoint = CGPoint(x: 0.75, y: 0.5)
//
//    layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.98, b: -0.17, c: 0.17, d: 24.58, tx: -0.06, ty: -11.62))
//
//    layer0.bounds = login.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
//
//    layer0.position = login.center
}
