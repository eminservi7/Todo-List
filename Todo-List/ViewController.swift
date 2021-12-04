//
//  ViewController.swift
//  Todo-List
//
//  Created by Emre Kök on 4.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var text: UILabel!
    var taskU = Task(text:"do something", date:Date(timeIntervalSinceReferenceDate:410220000),header:"header",status:false)
    var user = User(tasks: Task.generateTaskList(), fname: "Emre", lName:"Kok")
    override func viewDidLoad() {
        super.viewDidLoad()
        user.assignTaskToUser(task: taskU)
        
        loadData()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        if user.taskList[0].status == false
        {
            user.taskList[0].status = true
        }
        else
        {
            user.taskList[0].status = false   
        }
        loadData()
    }
    func loadData(){
        let userTasks = self.user.taskList
        label.text = userTasks[0].header
        if userTasks[0].status == true{
            status.text = "Tamamlandı"
        }
        else {
            status.text = "Devam Ediyor"
        }
        text.text = userTasks[0].text
    }
    
    
}

