//
//  CreateTaskViewController.swift
//  Todo App
//
//  Created by Bruce Galpin on 2017/02/24.
//  Copyright © 2017 Social-IT-e Media. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var taskNameTxt: UITextField!
    @IBOutlet weak var taskFlagSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskBtn(_ sender: Any) {
        
        // Create task
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTxt.text!
        task.important = taskFlagSwitch.isOn
        
        // Save task
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        // Pop back
        
        navigationController!.popViewController(animated: true)
    }

}
