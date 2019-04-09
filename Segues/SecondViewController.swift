//
//  SecondViewController.swift
//  Segues
//
//  Created by Ahmad Jamaly Rabib on 9/4/19.
//  Copyright © 2019 Ahmad Jamaly Rabib. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textPassOver : String?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = textPassOver
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
        performSegue(withIdentifier: "sendDataBack", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataBack" {
            let firstVC = segue.destination as! ViewController
            firstVC.data = textField.text!
        }
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
