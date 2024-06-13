//
//  SecondViewController.swift
//  Assignment_8
//
//  Created by E5000861 on 30/05/24.
//

import UIKit

class SecondViewController: UIViewController {

    var employees: [[String: String]]?

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
           print("SecondViewController loaded")
           
           if let employees = employees {
               print("Employees data received: \(employees)")
               var displayText = ""
               for employee in employees {
                   if let name = employee["name"], let employeeId = employee["employeeId"], let designation = employee["designation"] {
                       displayText += "Name: \(name)\n"
                       displayText += "Employee ID: \(employeeId)\n"
                       displayText += "Designation: \(designation)\n\n"
                   }
               }
               textView.text = displayText
           } else {
               print("No employees data received")
           }
       }
}
