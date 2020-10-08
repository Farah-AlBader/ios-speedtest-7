//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Hint: `performSegue` is the way
    
    @IBAction func button(_ sender: Any) {
        let nameText = nameField.text!
        if nameText.count > 2 {
            performSegue(withIdentifier: "details", sender: nameText)
        }else if nameText.count <= 2 {
            let alertController = UIAlertController(title: "لا تستعبط! اكتب اسمك عدل ", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details"{
            let name = sender as! String
            let vc = segue.destination as! SecondVC
            vc.name = name
        }
    }
}

