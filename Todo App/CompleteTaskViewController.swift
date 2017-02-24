//
//  CompleteTaskViewController.swift
//  Todo App
//
//  Created by Bruce Galpin on 2017/02/24.
//  Copyright © 2017 Social-IT-e Media. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var prevVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (task.important) {
            taskLabel.text = "✨ \(task.name)"
        } else {
            taskLabel.text = "\(task.name)"
        }
    }

    @IBAction func completeTask(_ sender: Any) {
        prevVC.tasks.remove(at: prevVC.selectedIndex)
        prevVC.tableView1.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
}
