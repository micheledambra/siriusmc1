//
//  GoalView.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 21/10/22.
//

import SwiftUI


struct GoalView: View {
    @State var goalV: Bool = false
    @State var goal1: Bool = false
    
    
    var body: some View {
        
        NavigationStack{
            
            
            
            TabView {
                
                ForEach(GoalList) { GoalCard in
                    
                    
                    ZStack(alignment: .top){
                        
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(GoalCard.color)
                            .frame(width: 330, height: 540)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                            
                        
                        //.padding()
                        
                        VStack(){
                            Spacer()
                                .frame(height:30)
                            
                            Text(GoalCard.goalName)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                            
                            Spacer()
                                .frame(height:30)
                            Button(action: {
                                // Do something...
                                goal1.toggle()
                            }, label: {
                                NavigationLink(destination: TasksInGoal(), isActive: $goal1) {
                                    
                                }
                                Image("statplaceholder")
                                    .resizable()
                                    .frame(width: 245, height:245)
                                    .mask(Circle())
                                    .shadow(radius: 20)
                                
                            });
                            Spacer()
                                .frame(height:35)
                            
                            Text(GoalCard.goalDescription)
                                .frame(width: 300, height: 110, alignment: .top)
                                //.background(Color.gray)
                                
                            
                            Spacer()
                                .frame(height:78)
                            
                         /*   HStack {
                                Button{
                                    
                                } label: {
                                    Image(systemName: "pencil")
                                }
                                .buttonStyle(GrowingButton())
                                
                                Spacer()
                                    .frame(width: 90)
                                
                                Button{
                                    
                                } label: {
                                    Image(systemName: "chart.xyaxis.line")
                                }
                                .buttonStyle(GrowingButton())
                                
                            } */
                        }
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            
            
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

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
