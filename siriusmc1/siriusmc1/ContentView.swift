//
//  ContentView.swift
//  siriusmc1
//
//  Created by Michele D'Ambra on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("test placeholder")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
