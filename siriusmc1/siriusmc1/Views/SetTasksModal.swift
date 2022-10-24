//
//  SetTasksModal.swift
//  siriusmc1
//
//  Created by Daniele Patrizio on 24/10/22.
//

import SwiftUI

struct SetTasksModal: View {
    var body: some View {
        
        
        NavigationView {
            
            
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
    
    struct SetTasksModal_Previews: PreviewProvider {
        static var previews: some View {
            SetTasksModal()
        }
    }
    
    
}
