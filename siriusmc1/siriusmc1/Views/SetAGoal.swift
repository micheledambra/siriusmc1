//
//  SetAGoal.swift
//  siriusmc1
//
//  Created by Giuseppe Iodice on 25/10/22.
//

import SwiftUI


struct SetAGoal: View {
    @State var username: String = ""
    @State private var date = Date()
    @State private var dateTwo = Date()

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
                        TextField("Placeholder", text: $username)
                        
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
                        TextField("Placeholder", text: $username)
                        
                    }
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 16.0)
                    Divider()
                    
                    DatePicker( "Start", selection: $date, in: Date()..., displayedComponents: [.date])
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 16.0)
                        .padding(.trailing, 16.0)
                    
                    Divider()
                    DatePicker( "End", selection: $dateTwo, in: Date()..., displayedComponents: [.date])
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
    
    struct SetAGoal_Previews: PreviewProvider {
        static var previews: some View {
            SetAGoal()
        }
    }
}
