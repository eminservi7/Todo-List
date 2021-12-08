//
//  Task.swift
//  Todo-List
//
//  Created by Emre Kök on 5.12.2021.
//

import UIKit

class Task {
    
    var text:String?
    
    var date:Date?
        
    var status:Bool?// task finished or will do
    //can be use enum - true finished - false 
    
    init(text: String,date:Date,status:Bool){
        self.text = text
        self.date = date
        self.status = false
    }
    static func generateTaskList() -> [Task]
    {
        let taskList: [Task] = []
        return taskList
    }
    
}
