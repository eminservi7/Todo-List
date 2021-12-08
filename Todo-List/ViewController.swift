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
    @IBOutlet weak var statusButton: UIButton!
    
    let successColor =  CGColor.init(red: 187/255, green: 245/255, blue: 17/255, alpha: 96.0/100)
    let waitingColor =  CGColor.init(red: 245/255, green: 153/255, blue: 42/255, alpha: 96.0/100)
    var taskU = Task(text:"  do something", date:Date(timeIntervalSinceReferenceDate:410220000),status:false)
    var user = User(tasks: Task.generateTaskList(), fname: "Emre", lName:"Kok")
    override func viewDidLoad() {
        super.viewDidLoad()
        text.layer.masksToBounds = true
        text.layer.cornerRadius = 10
        text.layer.backgroundColor = successColor
        text.textColor = UIColor.white
        text.textColor = UIColor.black
        user.assignTaskToUser(task: taskU)
        statusButton.layer.cornerRadius = 6
        clickableUILabel()
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

        if userTasks[0].status == true{
            //status.text = "Tamamlandı"
            text.backgroundColor = UIColor.init(cgColor: successColor)
            statusButton.titleLabel?.textColor = .black
        }
        else {
            //status.text = "Devam Ediyor"
            text.backgroundColor = UIColor.init(cgColor: waitingColor)
            statusButton.titleLabel?.textColor = .white
            statusButton.backgroundColor = UIColor.red
            
        }
        text.text = userTasks[0].text
    }
    
    func clickableUILabel(){
        text.isUserInteractionEnabled = true
        // Create and add the Gesture Recognizer
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
        text.addGestureRecognizer(guestureRecognizer)
        view.addSubview(text)
    }
    
    @objc func labelClicked(_ sender: Any) {
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
    
}

