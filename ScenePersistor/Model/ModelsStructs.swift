//
//  IconsViews.swift
//  ScenePersistor
//
//  Created by Rafael Gonzaga on 04/08/23.
//

import Foundation
import SwiftUI

struct HouseView: View {
    var body: some View {
        
        List  {
            Text("Home")
                .frame(width: 500, height: 600)
        }
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search")
    }
}

struct FriendsView: View {
var body: some View {
        Text("Friend")
    }
}


struct BellView: View {
    var body: some View {
        
        Text("Notification")
    }
}

struct InBoxView : View {
    var body: some View {
        Text("Messages")
    }
}



