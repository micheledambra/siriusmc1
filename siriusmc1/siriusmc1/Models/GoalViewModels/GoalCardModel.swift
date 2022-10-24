//
//  GoalCardModel.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 24/10/22.
//

import Foundation

import SwiftUI

struct GoalCard: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var description : String
    var numberOfTasks: Int
    var numberOfTasksDone: Int
    var color: Color
    
    //methods
}

var GoalList: [GoalCard] = [
    GoalCard(name: "Goal #1", description: "Goal Description 1", numberOfTasks: 5, numberOfTasksDone: 4, color: .teal),
    GoalCard(name: "Goal #2", description: "Goal Description 2", numberOfTasks: 8, numberOfTasksDone: 6, color: .gray),
    GoalCard(name: "Goal #3", description: "Goal Description 3", numberOfTasks: 6, numberOfTasksDone: 4, color: .green)
]
