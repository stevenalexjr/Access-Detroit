//
//  ResourceDetailView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 2/10/23.
//

import SwiftUI

//struct ResourceDetailView: View {
//    
//    @Environment(\.dismiss) var dismiss
//    
//    var body: some View {
//        List {
//            Button("                 Close") {
//                        dismiss()
//                    }
//                    .font(.title)
//                    .padding()
//            Section{
//                Text("Company:")
//            }
//            Text("Address")
//            Section {
//                Text("Hours")
//            }
//            Section{
//                Text("Website")
//            }
//        }
//    }
//}

struct ResourceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceDetailView(company: Company.sampleData[0])
    }
}
