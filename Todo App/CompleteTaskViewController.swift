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
    
    var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (task!.important) {
            taskLabel.text = "✨ \(task!.name!)"
        } else {
            taskLabel.text = "\(task!.name!)"
        }
    }

    @IBAction func completeTask(_ sender: Any) {
        
        // Delete task
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        
        // Save task
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        
        navigationController!.popViewController(animated: true)
        
    }
}
