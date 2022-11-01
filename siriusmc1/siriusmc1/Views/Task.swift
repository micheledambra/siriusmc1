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
    @State var checked = false

    
    
    var tasks: [Tasks] = [
        Tasks (name: "Prepare the App Icon"),
        Tasks (name: "Prepare the App Store Template"),
        Tasks (name: "Make sure the app runs on IPhone"),
        Tasks (name: "Make a video of the app")
    ]
    
    var body: some View {
        
        VStack{
            
          
            
            NavigationStack{
                
                
                ZStack {
                    
                    
                    VStack{
                        
                        List {
                            
                            DatePicker("Start Date", selection: $calendar, displayedComponents: [.date]).datePickerStyle(.graphical)
                                //.background(Color.gray)
                            
                            
                            
                            ForEach(tasks) {
                                task in
                                
                                Toggle(isOn: $checked) {
                                Text("  "+task.name)
                                }.toggleStyle(CheckboxStyle())
                                
                            }
                            
                            
                        }

                        
                    }
                }
                
                //.padding()
                .navigationTitle("Tasks")
                
                Spacer ()
            }
            
            
            
        }
        
    }
    
    struct TaskView_Previews:
        PreviewProvider {
        static var previews: some View {
            TaskView()
        }
    }
    
}
