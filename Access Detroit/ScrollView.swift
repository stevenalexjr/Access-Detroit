//
//  ScrollView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 1/24/23.
//

import Foundation
import SwiftUI

//struct DragGestureView: View {
    //@State var isDragging = false
    
    //var drag: some Gesture {
        //DragGesture()
           // .onChanged { _ in self.isDragging = true }
           // .onEnded { _ in self.isDragging = false }
    //}
///}

struct HomeView: View{
    @State var isDragging = false
    @State private var location: CGPoint = CGPoint(x: 50, y: 50)
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true }
            .onEnded { _ in self.isDragging = false }
    }
    
    var body: some View{
        ZStack{
            Image("access detroit logo").resizable().scaledToFit()
            
            
            HStack {
                Text("← Employment").padding(80)
                Text("Training →")
            }
            
            
        }
        .gesture(drag)
    }
}
struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
