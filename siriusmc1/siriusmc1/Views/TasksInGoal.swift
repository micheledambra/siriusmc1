//
//  TasksInGoal.swift
//  siriusmc1
//
//  Created by Aleksandra Nikiforova on 21/10/22.
//

import SwiftUI

struct TasksInGoal: View {
    @State var setModal: Bool = false
    var body: some View {
        ZStack{
            Button("Set Tasks") {
                setModal.toggle()
            }
            .sheet(isPresented: $setModal) {
                SetTasksModal()
            }

        }
    }
    
    struct TasksInGoal_Previews: PreviewProvider {
        static var previews: some View {
            TasksInGoal()
        }
    }
}
