//
//  GoalView.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 21/10/22.
//

import SwiftUI


struct GoalView: View {
    var body: some View {
        
        NavigationStack{
            
            
            
            TabView {
                    
                    ForEach(GoalList) { GoalCard in
                        
                        
                        ZStack(alignment: .top){
                            
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(GoalCard.color)
                                .frame(width: 330, height: 525)
                                .shadow(radius: 10)
                            //.padding()
                            
                            VStack(){
                                Spacer()
                                    .frame(height:30)
                                
                                Text(GoalCard.name)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                
                                Spacer()
                                    .frame(height:30)
                                
                                Image("statplaceholder")
                                    .resizable()
                                    .frame(width: 200, height:200)
                                    .mask(Circle())
                                    .shadow(radius: 20)
                                
                                Spacer()
                                    .frame(height:35)
                                
                                Text(GoalCard.description)
                                
                                Spacer()
                                    .frame(height:78)
                                
                                HStack {
                                    Button{
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    } label: {
                                        Image(systemName: "pencil")
                                    }
                                    .buttonStyle(GrowingButton())
                                    
                                    Spacer()
                                        .frame(width: 90)
                                    
                                    Button{
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    } label: {
                                        Image(systemName: "chart.xyaxis.line")
                                    }
                                    .buttonStyle(GrowingButton())
                                    
                                }
                            }
                        }
                    }
            }
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            
            .navigationTitle("Goals")
            .toolbar(content: {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //action
                    }) {
                        Text(Image(systemName: "plus"))
                    }
                }
            })
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
