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
    var cardHeight: CGFloat = 170
    var cardWidth: CGFloat = 345
    
    
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Text("Goals")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 250.0)
                    .frame(height:0)
              
                    .toolbar(content: {
                        
                        
                            Button("Add") {
                                goalV.toggle()
                                
                            }
                            .padding(.top, 33.0)
                            .sheet(isPresented: $goalV) {
                                SetAGoal()
                            }
                    })
                
            }


            Spacer()
            
            VStack{
                
                if GoalList[0].empty != true {
                    ZStack(alignment: .top) {
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.yellow)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text(GoalList[0].goalName)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                            
                            Spacer()
                                .frame(height: 25)
                            
                            Text(GoalList[0].goalDescription)
                                .frame(width: 300, height: 85, alignment: .top)
                            
                        }
                        
                        NavigationLink(destination: TasksInGoal2(goal: GoalList[0].goalName)) {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(.teal)
                                .opacity(0)
                                .frame(width: cardWidth, height: cardHeight)
                        }
                        
                        
                    }//zstack1
                }//endif
                
                Spacer()
                    .frame(height: 25)
                
                if GoalList[1].empty != true {
                    ZStack(alignment: .top) {
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.orange)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text(GoalList[1].goalName)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                            
                            Spacer()
                                .frame(height: 25)
                            
                            Text(GoalList[1].goalDescription)
                                .frame(width: 300, height: 85, alignment: .top)
                            
                        }
                        
                        NavigationLink(destination: TasksInGoal2(goal: GoalList[1].goalName)) {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(.teal)
                                .opacity(0)
                                .frame(width: cardWidth, height: cardHeight)
                        }
                        
                        
                    }//zstack1
                }//endif
                
                Spacer()
                    .frame(height: 25)
                
                if GoalList[2].empty != true {
                    ZStack(alignment: .top) {
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(.green)
                            .frame(width: cardWidth, height: cardHeight)
                            .shadow(color: .gray, radius: 10, x:8, y:8)
                        
                        VStack(){
                            
                            Spacer()
                                .frame(height: 30)
                            Text(GoalList[2].goalName)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                            
                            Spacer()
                                .frame(height: 25)
                            
                            Text(GoalList[2].goalDescription)
                                .frame(width: 300, height: 85, alignment: .top)
                            
                        }
                        
                        NavigationLink(destination: TasksInGoal2(goal: GoalList[2].goalName)) {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(.teal)
                                .opacity(0)
                                .frame(width: cardWidth, height: cardHeight)
                        }
                        
                    }
                    //zstack1
                }
                //endif
                
                
            }
            Spacer(minLength: 40)
            
            
            
            //title
                
                
        }
        
    }
    
}

struct GoalView2_Previews: PreviewProvider {
    static var previews: some View {
        GoalView2()
    }
}
