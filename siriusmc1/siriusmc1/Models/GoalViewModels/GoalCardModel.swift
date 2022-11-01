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
        GoalCard(empty: false, goalName: "Make a presentation", goalDescription: "Prepare a presentation for the Academy to present my product", numberOfTasks: 7, numberOfTasksDone: 6, startDate: "10/11/2022", endDate: "10/12/22", ref: "TaskListG1" ,color: .teal),
        GoalCard(empty: false, goalName: "Pass the English Exam", goalDescription: "Study and prepare to pass the final exam", numberOfTasks: 10, numberOfTasksDone: 7, startDate: "10/12/2022", endDate: "10/01/23", ref: "TaskListG2" , color: .gray),
        GoalCard(empty: false, goalName: "Learn to play Piano", goalDescription: "I want to learn how to play piano", numberOfTasks: 8, numberOfTasksDone: 5, startDate: "10/12/2022", endDate: "10/01/23", ref: "TaskListG3", color: .green)

    ]


var TaskListG1: [GoalTasks] = [

    GoalTasks(empty: false, taskName: "Collect all the materials", day: "11/11/22"),
    GoalTasks(empty: false, taskName: "Write down the presentation", day: "12/11/22"),
    GoalTasks(empty: false, taskName: "Prepare the slides", day: "13/11/22"),
    GoalTasks(empty: false, taskName: "Prepare the App Icon", day: "14/11/22"),
    GoalTasks(empty: false, taskName: "Prepare the App Store Template", day: "15/11/22"),
    GoalTasks(empty: false, taskName: "Make sure the app runs on IPhone", day: "16/11/22"),
    GoalTasks(empty: false, taskName: "Make a video of the app", day: "17/11/22")
    
    
]

var TaskListG2: [GoalTasks] = [

    GoalTasks(empty: false, taskName: "Task 1 G 2", day: "11/11/22"),
    GoalTasks(empty: false, taskName: "Task 2 G 2", day: "12/11/22"),
    GoalTasks(empty: false, taskName: "Task 3 G 2", day: "13/11/22"),
    GoalTasks(empty: false, taskName: "Task 4 G 2", day: "14/11/22"),
    GoalTasks(empty: false, taskName: "Task 5 G 2", day: "15/11/22"),
    GoalTasks(empty: false, taskName: "Task 6 G 2", day: "16/11/22"),
    GoalTasks(empty: false, taskName: "Task 7 G 2", day: "17/11/22"),
    GoalTasks(empty: false, taskName: "Task 8 G 2", day: "18/11/22"),
    GoalTasks(empty: false, taskName: "Task 9 G 2", day: "19/11/22"),
    GoalTasks(empty: false, taskName: "Task 10 G 2", day: "20/11/22")
    
    
]

var TaskListG3: [GoalTasks] = [

    GoalTasks(empty: false, taskName: "Task 1 G 3", day: "11/11/22"),
    GoalTasks(empty: false, taskName: "Task 2 G 3", day: "12/11/22"),
    GoalTasks(empty: false, taskName: "Task 3 G 3", day: "13/11/22"),
    GoalTasks(empty: false, taskName: "Task 4 G 3", day: "14/11/22"),
    GoalTasks(empty: false, taskName: "Task 5 G 3", day: "15/11/22"),
    GoalTasks(empty: false, taskName: "Task 6 G 3", day: "16/11/22"),
    GoalTasks(empty: false, taskName: "Task 7 G 3", day: "17/11/22"),
    GoalTasks(empty: false, taskName: "Task 8 G 3", day: "18/11/22"),
    GoalTasks(empty: false, taskName: "Task 9 G 3", day: "19/11/22"),
    GoalTasks(empty: false, taskName: "Task 10 G 3", day: "20/11/22")
    
    
]



struct CheckboxStyle: ToggleStyle {

    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .font(.system(size: 20, weight: .regular, design: .default))
                configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}
