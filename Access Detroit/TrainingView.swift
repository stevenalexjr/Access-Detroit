//
//  TrainingView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 1/24/23.
//

import SwiftUI
import Foundation

struct TrainingView: View {
    var body: some View {
        VStack{
            Text("Training").fontWeight(.medium)
                .font(.largeTitle)
            Image(systemName: "brain.head.profile")
                .frame(height:2)
                .imageScale(.large)
                .foregroundColor(.black)
                .font(.title)
        }
        .padding()
        .position(x:215 , y:30)
    }
}
struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingView()
    }
}
