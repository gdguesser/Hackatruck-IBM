//
//  ContentView.swift
//  firstApp
//
//  Created by Student on 04/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""

    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection){
                TextField("Enter your name", text: $name)
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
            Text("Third View")
            .font(.title)
            .tabItem {
                VStack {
                    Image("third")
                    Text("Third")
                }
            }
            .tag(2)
            Text("Fourth View")
            .font(.title)
            .tabItem {
                VStack {
                    Image("second")
                    Text("Fourth")
                }
            }
            .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
