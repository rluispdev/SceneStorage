//
//  SwiftUIView.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 14/08/23.


import SwiftUI

struct SwiftUIView: View {
    
    @State var currentTab: Tab = .home
    
    var body: some View {
        
        VStack(spacing: 0.0){
            TabView(selection: $currentTab) {
                
                Text("Home")
                    .tag(Tab.home)
                    
                Text("Magnifyingglass")
                    .tag(Tab.source)

                Text("Person")
                    .tag(Tab.home)
                
                Text("Bell")
                    .tag(Tab.bells )
                    
                Text("Envelope")
                    .tag(Tab.envelopes)
            }
          CustomTabBar(currentTab: $currentTab)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


