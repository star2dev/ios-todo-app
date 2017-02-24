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
    
    var prevVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskBtn(_ sender: Any) {
        // Create task
        let task = Task()
        task.name = taskNameTxt.text!
        task.important = taskFlagSwitch.isOn
        
        // Add to prev view
        prevVC.tasks.append(task)
        prevVC.tableView1.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
