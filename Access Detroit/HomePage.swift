//
//  HomePage.swift
//  Access Detroit
//
//  Created by Steven Alexander on 2/8/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
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
                    }}
           // working but extra events 
        ZStack {
            
            
            VStack {
                HStack{
                    VStack{
                        Image("Person")
                            .padding(1)
                        Image("Trophy")
                            .padding()
                        
                        
                    }//End of VStack
                    
                    Image( "logo")
                        .padding(80)
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Image("Search Engine")
                        .controlSize(.large)
                    Spacer()
                    Text("")
                        .padding(1)
                        .padding()
                }//End of HStack
                Spacer()
                Button("Upcoming Events"){
                    
                    
                }
                .controlSize(.large)
                .padding(10)
                Button("Weekly Event"){
                    
                }
                .controlSize(.large)
                Spacer()
                //                Text("")
                //                    .padding(.horizontal)
                //                    .padding()
            }
            
            
            
        }
        
        .buttonStyle(.borderedProminent)
        .tint(.green)
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
            
            
                }
            }
        }
    
    

