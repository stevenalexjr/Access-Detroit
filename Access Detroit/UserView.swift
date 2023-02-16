//
//  UserView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 2/8/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        TabView {
            CompanyTileView()
                .tabItem() {
                    Label("Employment", systemImage: "briefcase.circle")
                }
            HomeView()
                .tabItem() {
                    Label("Events", systemImage: "calendar.circle")
            }
            TrainingView()
                .tabItem() {
                    Label("Training", systemImage:"brain.head.profile")
                }
            
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
