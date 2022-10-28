//
//  TasksInGoal2.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 28/10/22.
//

import SwiftUI

struct TasksInGoal2: View {
    @State var showModal: Bool = false
    
    var goal: String = "Tasks"
    
    var body: some View {
        
        
        NavigationStack{
            List{
                ForEach(TaskListG1) { TaskListG1 in
                    
                    HStack{
                        
                        Text(TaskListG1.taskName)
                            .fontWeight(.bold)
                        
                    }
                }
            }
            .navigationTitle(goal)
            .toolbar(content: {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        showModal.toggle()
                    }
                    .sheet(isPresented: $showModal) {
                        SetTasksModal()
                    }                }
            })
            
            
        }
        
    }
    
    
    struct TasksInGoal2_Previews: PreviewProvider {
        static var previews: some View {
            TasksInGoal2()
        }
    }
    
}
