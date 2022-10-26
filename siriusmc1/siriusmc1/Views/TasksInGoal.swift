//
//  TasksInGoal.swift
//  siriusmc1
//
//  Created by Aleksandra Nikiforova on 21/10/22.
//

import SwiftUI

struct TasksInGoal: View {
    @State var showModal: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Divider()
                Spacer()
                List {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "bookmark.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .opacity(0.7)
                            Text("Task №1")
                                .fontWeight(.bold)
                                .font(.system(size: 18))
                            Text("Task's description                                  ")
                                .multilineTextAlignment(.leading)
                        }
                        .foregroundColor(.white)
                        .padding(16)
                    }
                    .background(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(15)
                       
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "bookmark.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .opacity(0.7)
                            Text("Task №2")
                                .fontWeight(.bold)
                                .font(.system(size: 18))
                            Text("Task's description                                    ")
                                .multilineTextAlignment(.leading)
                        }
                        .foregroundColor(.white)
                        .padding(16)
                    }
                    .background(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(15)
                
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "bookmark.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .opacity(0.7)
                            Text("Task №3")
                                .fontWeight(.bold)
                                .font(.system(size: 18))
                            Text("Task's description                                    ")
                                .multilineTextAlignment(.leading)
                        }
                        .foregroundColor(.white)
                        .padding(16)
                    }
                    .background(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .cornerRadius(15)
                  
            
                }
                
            }
             
            .navigationTitle("Goal №1")
           
            .toolbar(content: {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        showModal.toggle()
                    }
                    .sheet(isPresented: $showModal) {
                        SetTasksModal()
                    }                }
            })

        }
    
    }
}

struct TasksInGoal_Previews: PreviewProvider {
    static var previews: some View {
        TasksInGoal()
    }
}
