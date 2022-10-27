//
//  EditView.swift
//  siriusmc1
//
//  Created by Giuseppe Iodice on 27/10/22.
//

import SwiftUI
struct EditView: View {
    @State var goalV: Bool = false
    @State var goal1: Bool = false
    
    
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
                            Button(action: {
                                // Do something...
                                goal1.toggle()
                            }, label: {
                                
                                Image("tester")
                                    .resizable()
                                    .frame(width: 200, height:200)
                                    .mask(Circle())
                                    .shadow(radius: 20)
                                    .sheet(isPresented: $goal1) {
                                        TasksInGoal()
                                    }
                            });                                 Spacer()
                                .frame(height:35)
                            
                            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .frame(width:100.0)
                            
                            Spacer()
                                .frame(height:78)
                            
                            HStack {
                                Button{
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                } label: {
                                    Image(systemName: "plus")
                                }
                                .buttonStyle(GrowingButton())
                                
                                Spacer()
                                    .frame(width: 90)
                                
                                Button{
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                } label: {
                                    Image(systemName: "gobackward")
                                }
                                .buttonStyle(GrowingButton())
                                
                            }
                        }
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            
            .navigationTitle("Edit Goals")
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



struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
