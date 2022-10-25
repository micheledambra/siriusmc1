//
//  SetAGoal.swift
//  siriusmc1
//
//  Created by Giuseppe Iodice on 25/10/22.
//

import SwiftUI


struct SetAGoal: View {
    @State var username: String = ""
    var body: some View {
        
        NavigationView {
            
            VStack{
                Divider()
                
                
                
                VStack{
                    Text("Name")
                        .padding([.leading, .bottom, .trailing], -181.0)
                    TextField("Goal#1", text: $username).padding(.leading, 157)
                    
                    Divider()
                    
                }
                VStack{
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Period") }).padding()
                    
                    Divider()
                    
                }
                Spacer()
                    .frame(height:490)
                
                
                Text("")
                    .navigationTitle("Set a Goal")
                
                    .toolbar(content: {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                            }) {
                                Image(systemName: "plus")
                                    .imageScale(.large)
                            }
                        }
                    })
                
                
            }
        }
    }
    
    struct SetAGoal_Previews: PreviewProvider {
        static var previews: some View {
            SetAGoal()
        }
    }
}
