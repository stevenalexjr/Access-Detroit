//
//  ContentView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Employment").fontWeight(.medium)
                    .font(.largeTitle)
                Image(systemName: "briefcase.circle").frame(height:2)
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .font(.title)
                
            }
            .padding()
            .position(x:215 , y:30)
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
