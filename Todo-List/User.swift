//
//  User.swift
//  Todo-List
//
//  Created by Emre Kök on 5.12.2021.
//

import Foundation

class User{
    
    var taskList:[Task] = []
    var fName:String!
    var lName:String!

    init(tasks:[Task],fname:String,lName:String){
        self.taskList = tasks
        self.fName = fname
        self.lName = lName
    }
    func assignTaskToUser(task:Task){
        self.taskList.append(task)
    }

}
