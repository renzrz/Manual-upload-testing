//
//  ViewController.swift
//  test
//
//  Created by Jgtig88mm on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var alertLbl: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var userSementara: String?
    var passSementara: String?
    var ud: String? = UserDefaults.standard.string(forKey: "login")
    var db = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkUser()
        checkingLogin()
        
        userSementara = "asd"
        passSementara = "asd"
        
        titleLbl.text = "Login"
        alertLbl.text = "Username / Password salah"
        alertLbl.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func checkUser() {
        
        if ud != nil && ud != "" {
            
            self.performSegue(withIdentifier: "halList", sender: nil)
        } else {}
    }
    
    func checkingLogin() {
        
        if username.text != userSementara && password.text != passSementara {
            
            alertLbl.isHidden = false
        } else {
            
            db.userName = userSementara
            UserDefaults.standard.setValue("qwe", forKey: "login")
            self.performSegue(withIdentifier: "segueToMaps", sender: nil)
        }
    }

}

