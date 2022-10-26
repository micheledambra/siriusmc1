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
                    HStack {
                        Text("Name")
                            .foregroundColor(Color.black)
                            .padding(.leading, 6.0)
                        Spacer()
                        TextField("Placeholder", text: $username)
                            
                    }
                    .multilineTextAlignment(.trailing)
                    .padding(10)
                   
                    Divider()
                    
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
                                Text("Add")
                                    
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
