//
//  ViewController.swift
//  Assignment_8
//
//  Created by E5000861 on 30/05/24.
//

import UIKit

//Creating structure of employees

class ViewController: UIViewController {
    
    let employees: [[String: String]] = [
              ["name": "Ayush", "employeeId": "001", "designation": "iOS trainee"],
              ["name": "Arya", "employeeId": "002", "designation": "iOS trainee"],
              ["name": "Atharwa", "employeeId": "003", "designation": "iOS trainee"],
              ["name": "Pranay", "employeeId": "004", "designation": "iOS trainee"],
              ["name": "Sumit", "employeeId": "005", "designation": "iOS trainee"]
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    @IBAction func navigateButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               if let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
                   vc.employees = self.employees
                   self.navigationController?.pushViewController(vc, animated: true)
               } else {
                   print("SecondViewController could not be instantiated.")
               }
    }
    }
    


