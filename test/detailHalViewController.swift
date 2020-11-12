//
//  detailHalViewController.swift
//  test
//
//  Created by Jgtig88mm on 12/11/20.
//

import UIKit

class detailHalViewController: UIViewController {

    var user = User()
    var hasilSegue: String?
    
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var nama: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nama.text = user.userName
        data.text = hasilSegue
        // Do any additional setup after loading the view.
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
