//
//  GoalCardModel.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 24/10/22.
//

import Foundation

import SwiftUI

struct GoalCard: Identifiable{
    var id: UUID = UUID()
    
    var empty: Bool
    var goalName: String
    var goalDescription : String
    var numberOfTasks: Int
    var numberOfTasksDone: Int
    var startDate: String //Date
    var endDate: String //Date
    var ref: String
    var color: Color
}


struct GoalTasks: Identifiable{
     var id: UUID = UUID()
     
     var empty: Bool
     var taskName: String
     var day: String
     
     
     //methods
 }



    var GoalList: [GoalCard] = [
        GoalCard(empty: false, goalName: "Goal #1", goalDescription: "Goal #1 Description", numberOfTasks: 7, numberOfTasksDone: 6, startDate: "10/11/2022", endDate: "10/12/22", ref: "TaskListG1" ,color: .teal),
        GoalCard(empty: false, goalName: "Goal #2", goalDescription: "Goal #2 Description", numberOfTasks: 10, numberOfTasksDone: 7, startDate: "10/12/2022", endDate: "10/01/23", ref: "TaskListG2" , color: .gray),
        GoalCard(empty: false, goalName: "Goal #3", goalDescription: "Goal #3 Description", numberOfTasks: 8, numberOfTasksDone: 5, startDate: "10/12/2022", endDate: "10/01/23", ref: "TaskListG3", color: .green)

    ]


var TaskListG1: [GoalTasks] = [

    GoalTasks(empty: false, taskName: "Task 1 G 1", day: "11/11/22"),
    GoalTasks(empty: false, taskName: "Task 2 G 1", day: "12/11/22"),
    GoalTasks(empty: false, taskName: "Task 3 G 1", day: "13/11/22"),
    GoalTasks(empty: false, taskName: "Task 4 G 1", day: "14/11/22"),
    GoalTasks(empty: false, taskName: "Task 5 G 1", day: "15/11/22"),
    GoalTasks(empty: false, taskName: "Task 6 G 1", day: "16/11/22"),
    GoalTasks(empty: false, taskName: "Task 7 G 1", day: "17/11/22"),
    GoalTasks(empty: false, taskName: "Task 8 G 1", day: "18/11/22"),
    GoalTasks(empty: false, taskName: "Task 9 G 1", day: "19/11/22"),
    GoalTasks(empty: false, taskName: "Task 10 G 1", day: "20/11/22")
    
    
]
