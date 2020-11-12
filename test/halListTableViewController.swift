//
//  halListTableViewController.swift
//  test
//
//  Created by Jgtig88mm on 12/11/20.
//

import UIKit

class halListTableViewController: UITableViewController {
    
    var arrCategory = ["DATA 1", "DATA 2", "DATA 3"]
    var categorySelected: String?

    @IBAction func logoutBtn(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "login")
        
        let mainStoryBoard : UIStoryboard       = UIStoryboard(name: "Main", bundle: nil)
        let launchControl : UIViewController    = (mainStoryBoard.instantiateViewController(withIdentifier: "launchViewController") as? LaunchViewController)!
        
        UIApplication.shared.keyWindow!.rootViewController = launchControl
        UIApplication.shared.keyWindow!.makeKeyAndVisible()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategory.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell                    = tableView.dequeueReusableCell(withIdentifier: "CategoryViewCell", for: indexPath) as! CategoryViewCell
        
        cell.categoryLBL.text!      = arrCategory[indexPath.row]
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        categorySelected = arrCategory[indexPath.row]
     
        self.performSegue(withIdentifier: "listToDetailSegue", sender: nil)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "listToDetailSegue" {
            
            let destinationVC = segue.description as! detailHalViewController
            destinationVC.hasilSegue = categorySelected
            
        }
    }
    
    
    @IBAction func unwindToHomeVC(segue:UIStoryboardSegue) { }
}
