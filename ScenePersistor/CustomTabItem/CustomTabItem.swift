//
//  CustonTabItem.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 06/08/23.
//

import SwiftUI

struct CustomTabItem: ViewModifier {
    
    @Binding var isSelected: Int
    let systemImageName: String
    let tag: Int
    
    func body(content: Content) -> some View {
        content
            .tabItem {
                if isSelected == tag {
                    Image(systemName: "\(systemImageName)")
                      
                        .environment(\.symbolVariants, .fill)
                } else {
                    Image(systemName: systemImageName)
                        .environment(\.symbolVariants, .none)
                }
            }
            .tag(tag)
    }
}

struct CustomTabItem_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .modifier(CustomTabItem(isSelected: .constant(0), systemImageName: "house", tag: 0))
    }
}


extension View {
    func tabItem(isSelected: Binding<Int>, systemImageName: String, tag: Int) -> some View {
        self.modifier(CustomTabItem(isSelected: isSelected, systemImageName: systemImageName, tag: tag))
    }
}
