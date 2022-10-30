//
//  SetAGoal.swift
//  siriusmc1
//
//  Created by Giuseppe Iodice on 25/10/22.
//

import SwiftUI


struct SetAGoal: View {
    @State var goalName: String = ""
    @State var goalDescription: String = ""
    @State private var startDate = Date()
    @State private var endDate = Date()

    var body: some View {
        
        NavigationView {
            GeometryReader { geometry in
                
            VStack{
                Divider()
                
                
                
                VStack{
                    HStack {
                        Text("Name")
                            .foregroundColor(Color.black)
                            .padding(.leading, 6.0)
                        Spacer()
                        TextField("Insert Goal's Name", text: $goalName)
                        
                    }
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 16.0)
                    Divider()
                    HStack {
                        Text("Description")
                            .foregroundColor(Color.black)
                            .padding(.leading, 6.0)
                        Spacer()
                        TextField("Insert Description", text: $goalDescription)
                        
                    }
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 16.0)
                    Divider()
                    
                    DatePicker( "Start", selection: $startDate, in: Date()..., displayedComponents: [.date])
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 16.0)
                        .padding(.trailing, 16.0)
                    
                    Divider()
                    DatePicker( "End", selection: $endDate, in: Date()..., displayedComponents: [.date])
                        .padding(.leading, 16.0)
                        .padding(.trailing, 16.0)
                        .ignoresSafeArea(.keyboard, edges: .bottom)
                
                    
                }
                Spacer()
                    .frame(height:490)
                
                
                Text("")
                    .navigationTitle("Set a Goal")
                
                    .toolbar(content: {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                            }) {
                                Text("Add")
                                
                            }
                            
                        }
                    })
                
                
            }
        }
    }
    }
    
   /* GoalCard.goalName =
    GoalCard.goalDescription =
    GoalCard.startDate =
    GoalCard.endDate =
    */
    struct SetAGoal_Previews: PreviewProvider {
        static var previews: some View {
            SetAGoal()
        }
    }
}
