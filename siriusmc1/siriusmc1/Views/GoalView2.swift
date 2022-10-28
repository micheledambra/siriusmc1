//
//  GoalView2.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 28/10/22.
//

import SwiftUI

struct GoalView2: View {
    
    @State var goal1: Bool = false
    @State var goalV: Bool = false
    var cardHeight: CGFloat = 165
    var cardWidth: CGFloat = 330
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                
                ZStack(alignment: .top) {
                    
                    NavigationLink(destination: TasksInGoal2()) {
                        
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.teal)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                            .position(x:195, y:90)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text("Goal #1")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .position(x:0, y:30)
                            Spacer()
                                .frame(height: 25)
                            
                            Text("Goal Description #1")
                                .frame(width: 300, height: 85, alignment: .top)
                                .position(x:0, y:20)
                            
                            
                            
                        }
                    }
                    
                }//zstack1
                
                Spacer()
                    .frame(height: 25)
                
                ZStack(alignment: .top) {
                    
                    NavigationLink(destination: TasksInGoal()) {
                        
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.teal)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                            .position(x:195, y:90)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text("Goal #1")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .position(x:0, y:30)
                            Spacer()
                                .frame(height: 25)
                            
                            Text("Goal Description #1")
                                .frame(width: 300, height: 85, alignment: .top)
                                .position(x:0, y:20)
                            
                            
                            
                        }
                    }
                    
                }//zstack2
                
                Spacer()
                    .frame(height: 25)
                
                ZStack(alignment: .top) {
                    
                    NavigationLink(destination: TasksInGoal()) {
                        
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.teal)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                            .position(x:195, y:90)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text("Goal #1")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .position(x:0, y:30)
                            Spacer()
                                .frame(height: 25)
                            
                            Text("Goal Description #1")
                                .frame(width: 300, height: 85, alignment: .top)
                                .position(x:0, y:20)
                            
                            
                            
                        }
                    }
                    
                }
                
                
            }
            Spacer(minLength: 40)
            
            
            
            //title
                .navigationTitle("Goals")
                .toolbar(content: {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Add") {
                            goalV.toggle()
                        }
                        .sheet(isPresented: $goalV) {
                            SetAGoal()
                        }                }
                })
        }
    }
}

struct GoalView2_Previews: PreviewProvider {
    static var previews: some View {
        GoalView2()
    }
}
