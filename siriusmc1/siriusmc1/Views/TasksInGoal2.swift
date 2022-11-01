//
//  TasksInGoal2.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 28/10/22.
//

import SwiftUI

struct TasksInGoal2: View {
    @State var showModal: Bool = false
    @State var checked = false
    
    var goal: String = ""
   
    
    
    var body: some View {
        
        
        NavigationStack{
            List{
                ForEach(TaskListG1) { listvar in
                 
                    
                   
                    
                    HStack{
                            
                            Toggle(isOn: $checked) {
                                Text(listvar.taskName)
                                    .fontWeight(.bold)
                            }.toggleStyle(CheckboxStyle())
                     
                        
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
                            .presentationDetents([.medium, .large])
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
