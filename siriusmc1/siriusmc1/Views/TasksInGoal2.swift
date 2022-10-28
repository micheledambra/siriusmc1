//
//  TasksInGoal2.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 28/10/22.
//

import SwiftUI

struct TasksInGoal2: View {
    var body: some View {
        
        
        
        List{
            ForEach(TaskListG1) { TaskListG1 in
                
                HStack{
                    
                    Text(TaskListG1.taskName)
                        .fontWeight(.bold)
                    
                }
            }
        }
    }
    
    struct TasksInGoal2_Previews: PreviewProvider {
        static var previews: some View {
            TasksInGoal2()
        }
    }
    
}
