//
//  SwiftUIView.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 14/08/23.


import SwiftUI

struct MainView: View {
    
    @State var currentTab: Tab = .home
    
    var body: some View {
        
        VStack(spacing: 0.0){
            TabView(selection: $currentTab) {
                
                Text("Home")
                    .tag(Tab.home)
                    
                Text("Search")
                    .tag(Tab.source)

                Text("Communities")
                    .tag(Tab.comunity)
                
                Text("Notifications")
                    .tag(Tab.bells )
                    
                Text("Messages")
                    .tag(Tab.envelopes)
            }
          CustomTabBar(currentTab: $currentTab)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


