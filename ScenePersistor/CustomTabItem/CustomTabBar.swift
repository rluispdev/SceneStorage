//
//  CustomTabBar.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 14/08/23.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var currentTab: Tab
    
    var body: some View {
        GeometryReader { proxy in
            HStack(spacing: 0.0){
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        withAnimation(.easeInOut (duration: 0.1)) {
                            currentTab = tab
                        }
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? .black : .black)
                            .symbolVariant(currentTab == tab ? .fill : .none)
                    }
                }
            }
        }
        .frame(height: 30)
        .padding(.bottom, 10)
        .padding([.horizontal, .top])
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
