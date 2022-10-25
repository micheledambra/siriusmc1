//
//  ContentView.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 20/10/22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        TabView{
            GoalView()
                .tabItem{
                    Label("Goals", systemImage: "chart.bar.doc.horizontal")
                    
                    
                }.tag(1)
            
            TaskView()
                .tabItem{
                    Label("Tasks", systemImage: "list.bullet")
                    
                }.tag(2)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
