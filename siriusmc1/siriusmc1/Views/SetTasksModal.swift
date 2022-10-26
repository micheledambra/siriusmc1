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
                    .navigationTitle("Set a Task")
                
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
    struct SetTasksModal_Previews: PreviewProvider {
        static var previews: some View {
            SetTasksModal()
        }
    }
    
    
}
