//
//  LaunchViewController.swift
//  test
//
//  Created by Jgtig88mm on 12/11/20.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.string(forKey: "login") != "" && UserDefaults.standard.string(forKey: "login") != nil {
            
            self.performSegue(withIdentifier: "launchToMaps", sender: nil)
        } else {
            
            self.performSegue(withIdentifier: "launchToLogin", sender: nil)
        }
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      
    }
    

}
