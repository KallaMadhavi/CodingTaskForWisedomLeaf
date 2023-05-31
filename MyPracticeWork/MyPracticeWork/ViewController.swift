//
//  ViewController.swift
//  MyPracticeWork
//
//  Created by Madhavi on 27/05/23.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var phnrTf: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpBtn.layer.cornerRadius = 10
        
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "LoginViewController")as! LoginViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    @IBAction func createAnAccount(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SetPasswordViewController")as! SetPasswordViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    
    
}
