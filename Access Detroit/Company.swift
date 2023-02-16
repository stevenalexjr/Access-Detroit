//
//  Company.swift
//  Access Detroit
//
//  Created by Steven Alexander on 2/10/23.
//

import Foundation
import SwiftUI

struct Company: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let address: String
    let hours: String
    let website: String
    let imagePath: String
    
    
    static let sampleData: [Company] = [
        Company(name: "Starbucks", address: "777 Woodward Ave, Detroit, Mi, 48226", hours: "6:00 am - 7:00 pm", website: "Starbucks.com", imagePath: "Bucks"),
        Company(name: "DDOT", address: "100 Mack Ave, Detroit, Mi, 48201", hours: "9:00 am - 5:00 pm", website: "www.detroitmi.gov/departments/transportation", imagePath: "DDOT"),
        Company(name: "SER", address: "9301 Michigan Ave, Detroit, Mi, 48210", hours: "8:00 am - 5:00 pm", website: "www.sermetro.org", imagePath: "SER"),
        Company(name: "Michigan Works", address: "18100 Meyer Rd, Detroit, Mi, 48235", hours: "8:00 am - 5:00 pm", website: "www.michiganworks.org", imagePath: "MW"),
        Company(name: "Detroit At Work", address: "5901 Conner Ave, Detroit, Mi, 48213", hours: "8:00 am - 5:00 pm", website: "www.detroitatwork.com", imagePath: "DAT"),
        Company(name: "UBC", address: "23401 Mound Rd, Warren, Mi, 48091", hours: "8:00 am - 5:00 pm", website: "ubcmillwrights.com", imagePath: "UBC"),
        Company(name: "DPD", address: "1301 3rd Ave, Detroit, Mi, 48226", hours: "8:00 am - 5:00 pm", website: "www.detroitmi.gov/departments/police-departments", imagePath: "DPD"),
        Company(name: "DTC", address: "277 Gratiot, Detroit, Mi, 48226", hours: "8:00 am - 4:30 pm", website: "detroittraining.com", imagePath: "DTC")
    ]
}

private class ResourceDetailModel: ObservableObject{
    @Published var company: [Company] = Company.sampleData}

struct ResourceDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject fileprivate var viewModel = ResourceDetailModel()
   
        var body: some View {
            List(viewModel.company) { company in
                Button("                 Close") {
                                        dismiss()
                                    }
                                    .font(.title)
                                    .padding()
                
                Text("\(company.name)")
                Text("\(company.address)")
                Text("\(company.website)")
                Text("\(company.hours)")

            }
        }
    }

