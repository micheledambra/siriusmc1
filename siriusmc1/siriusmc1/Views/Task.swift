//
//  Task.swift
//  siriusmc1
//
//  Created by leila najar on 24/10/22.
//

import SwiftUI

import SwiftUI

struct Item: Hashable {
   let name: String
   let color: UIColor
}

import Foundation
struct Tasks: Identifiable {
    var id: UUID = UUID()
    var name: String
    
}


struct TaskView: View {
    
    @State private var calendar = Date()
    
    var tasks: [Tasks] = [
        Tasks (name: "Task N°1"), Tasks (name: "Task N°2"), Tasks (name: "Task N°3")
    ]
    
    var body: some View {
        
        VStack{
            
          
            
            NavigationStack{
                
                
                ZStack {
                    
                    
                    VStack{
                        
                        List {
                            DatePicker("Start Date", selection: $calendar, displayedComponents: [.date]).datePickerStyle(.graphical)
                            
                            ForEach(tasks) {
                                task in Text(task.name)
                            }
                            
                            
                        }
                        
                    }
                }
                
                //.padding()
                .navigationTitle("Tasks")
                
                Spacer ()
            }
            
            .navigationTitle("Tasks")
            
            
        }
        
    }
    
    struct TaskView_Previews:
        PreviewProvider {
        static var previews: some View {
            TaskView()
        }
    }
    
}
