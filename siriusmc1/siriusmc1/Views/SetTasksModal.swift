//
//  SetTasksModal.swift
//  siriusmc1
//
//  Created by Daniele Patrizio on 24/10/22.
//

import SwiftUI
import Foundation

struct SetTasksModal: View {
    @State var username: String = ""
    var body: some View {
        
        NavigationView {
            
            VStack{
                Divider()

               
                
                VStack{
                    Text("Name")
                        .padding([.leading, .bottom, .trailing], -181.0)
                    TextField("Placeholder", text: $username).padding(.leading, 157)
                   
                    Divider()

                }
                VStack{
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Period") }).padding()
                    
                    Divider()
                    
                }
                Spacer()
                    .frame(height:490)

                
                Text("")
                    .navigationTitle("Set a Task")
                
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
    struct SetTasksModal_Previews: PreviewProvider {
        static var previews: some View {
            SetTasksModal()
        }
    }
    
    
}
