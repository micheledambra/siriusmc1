//
//  Task.swift
//  siriusmc1
//
//  Created by leila najar on 24/10/22.
//

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
    
    
    var tasks: [Tasks] = [
        Tasks (name: "Task N°1"), Tasks (name: "Task N°2"), Tasks (name: "Task N°3")
    ]
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                Text("furfiubr")
                VStack{
                    List {
                        ForEach(tasks) {
                            task in Text(task.name)
                        }
                    }
                }
            }
            //.padding()
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
