//
//  ContentView.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected = 0
    
    var body: some View {
        
        TabView (selection: $isSelected) {
            
            HouseView()
            ///Custom .tabItem
                .tabItem(isSelected: $isSelected, systemImageName: "house", tag: 0)
        
            SearchView()
                .tabItem(isSelected: $isSelected, systemImageName: "magnifyingglass", tag: 1)
              
            FriendsView()
                .tabItem(isSelected: $isSelected, systemImageName: "person.2", tag: 2)
            
            BellView()
                .tabItem(isSelected: $isSelected, systemImageName: "bell", tag: 3)
        
            InBoxView()
                .tabItem(isSelected: $isSelected, systemImageName: "envelope", tag: 4)
            
        }
        .onAppear{
                UITabBar.appearance().unselectedItemTintColor = UIColor.black
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


