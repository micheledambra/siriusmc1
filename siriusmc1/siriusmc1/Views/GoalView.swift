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
            
            
            ZStack(alignment: .top){
                
                RoundedRectangle(cornerRadius: 40)
                    .foregroundColor(.teal)
                    .frame(width: 330, height: 560)
                    .shadow(radius: 30)
                //.padding()
                
                VStack(){
                    Spacer()
                        .frame(height:35)
                    
                    Text("Goal #1")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    
                    Spacer()
                        .frame(height:35)
                    
                    Image("statplaceholder")
                        .resizable()
                        .frame(width: 200, height:200)
                        .mask(Circle())
                        .shadow(radius: 20)
                    
                    Spacer()
                        .frame(height:35)
                    
                    Text("Goal description")
                    
                    Spacer()
                        .frame(height:90)
                    
                    HStack {
                        Button("Button") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        
                        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                    }
                }
            }
            .navigationTitle("Goals")
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
