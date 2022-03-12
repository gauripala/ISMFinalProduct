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
    
    }

}
