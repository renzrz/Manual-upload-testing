//
//  2ViewController.swift
//  test
//
//  Created by Jgtig88mm on 12/11/20.
//

import UIKit

class _ViewController: UIViewController {

    @IBOutlet weak var logout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationController?.isNavigationBarHidden = true
        navigationItem.leftBarButtonItem?.isEnabled = false
        navigationController?.navigationItem.backBarButtonItem?.isEnabled = false

        // Do any additional setup after loading the view.
    }
    @IBAction func logoutBtn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "halList", sender: nil)
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
