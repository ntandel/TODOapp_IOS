//
//  ContainerViewController.swift
//  TodoApp


// StudentID:301094688
// Assignment Name: ToDo Application
//
//  Created by Nisha Tandel on 2019-12-04
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var connectionButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var todoTableViewController:ToDoTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addButton.layer.cornerRadius = addButton.frame.size.width / 2
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TodoVC" {
            todoTableViewController = (segue.destination as! UINavigationController).childViewControllers.first as? ToDoTableViewController
            todoTableViewController.connectionButtonReference = connectionButton
        }
    }
    
    @IBAction func addNewTodoItem(_ sender: Any) {
        todoTableViewController.addNewTodo()
    }
    
    @IBAction func triggerConnection(_ sender: Any) {
        todoTableViewController.showConnectivityAction()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
