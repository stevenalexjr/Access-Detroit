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
        ZStack {
            
            
            VStack {
                HStack{
                    VStack{
                        Image("Person")
                        Image("Trophy")
                    }//End of VStack
                    
                    Image( "logo")
                        .padding()
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Image("Search Engine")
                    
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
