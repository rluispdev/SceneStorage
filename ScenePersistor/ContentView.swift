//
//  ContentView.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSelectd = Int()
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    
    var body: some View {
        
        TabView (selection: $isSelectd) {
            
            HouseView()
                .tabItem {
                    if isSelectd  == 0 {
                        Image(systemName: "house")
                            .environment(\.symbolVariants, .fill )
                    }else {
                        Image(systemName: "house")
                            .environment(\.symbolVariants, .none )
                    }
                }.tag(0)
            
            
            SearchView()
                .tabItem {
                    if isSelectd  == 1 {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants, .fill )
                    }else {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants, .none )
                    }
                }.tag(1)
            
            FriendsView()
                .tabItem {
                    if isSelectd  == 2 {
                        Image(systemName: "person.2")
                            .environment(\.symbolVariants, .fill )
                    }else {
                        Image(systemName: "person.2")
                            .environment(\.symbolVariants, .none )
                    }
                }.tag(2)
            
            
            BellView()
                .tabItem {
                    if isSelectd  == 3 {
                        Image(systemName: "bell")
                            .environment(\.symbolVariants, .fill )
                    } else {
                        Image(systemName: "bell")
                            .environment(\.symbolVariants, .none )
                    }
                }.tag(3)
            
            InBoxView()
                .tabItem {
                    if isSelectd  == 4 {
                        Image(systemName: "envelope")
                            .environment(\.symbolVariants, .fill )
                    } else {
                        Image(systemName: "envelope")
                            .environment(\.symbolVariants, .none )
                    }
                }.tag(4)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


