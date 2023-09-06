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
                    
                   } else {
                        Image(systemName: systemImageName)
                            .environment(\.symbolVariants, .none)
                    }
                }
            .tag(tag)
            }
    }

extension View {
    func tabItem(isSelected: Binding<Int>, systemImageName: String, tag: Int) -> some View {
        self.modifier(CustomTabItem(isSelected: isSelected, systemImageName: systemImageName, tag: tag))
        
    }
}

extension UITabBar {
    static func setUnselected(_ colorName: String) {
        if let color = UIColor(named: colorName) {
            self.appearance().unselectedItemTintColor = color
        }
    }
}

 
