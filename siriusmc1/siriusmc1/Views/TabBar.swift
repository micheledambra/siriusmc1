//
//  TabBar.swift
//  siriusmc1
//
//  Created by Daniele Patrizio on 24/10/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            GoalView()
                .tabItem{
                    Label("Goals", systemImage: "chart.bar.doc.horizontal")
                    
                    
                }.tag(1)
            
            TasksInGoal()
                .tabItem{
                    Label("Tasks", systemImage: "list.bullet")
                    
                }.tag(2)
        }
    }
    
    
    
    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
