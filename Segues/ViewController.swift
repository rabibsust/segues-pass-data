//
//  ViewController.swift
//  Segues
//
//  Created by Ahmad Jamaly Rabib on 9/4/19.
//  Copyright © 2019 Ahmad Jamaly Rabib. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    @IBAction func changeToBlue(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassOver = textField.text!
            destinationVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        viewLabel.text = data
    }

}

