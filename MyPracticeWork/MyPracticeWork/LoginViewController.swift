//
//  LoginViewController.swift
//  MyPracticeWork
//
//  Created by Madhavi on 31/05/23.
//

import UIKit

class LoginViewController: UIViewController {

 
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MobileListViewController")as! MobileListViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
