//
//  CompleteToDoViewController.swift
//  toDoList
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = TableViewController()
    var selectedToDo : ToDoCD?

    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo?.name //if there is a selectedToDo, we’ll go ahead and pass it the info it needs; otherwise, we’ll set it equal to nil

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
              context.delete(theToDo)
              navigationController?.popViewController(animated: true)
            }
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
