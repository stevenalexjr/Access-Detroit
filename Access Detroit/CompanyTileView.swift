//
//  CompanyTileView.swift
//  Access Detroit
//
//  Created by Steven Alexander on 2/10/23.
//

import SwiftUI

let columns = [GridItem(.adaptive(minimum: 100)), GridItem(.adaptive(minimum: 100)), //GridItem(.adaptive(minimum: 100)), GridItem(.adaptive(minimum: 100))
]

struct CompanyTileView: View {
    let company: [Company] = Company.sampleData
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            Text("Job Opportunities").bold()
                .font(.largeTitle)
                .position(x: 200, y: 100)
            
            LazyVGrid(columns: columns){
                ForEach (company, id: \.self) {
                    company in
                    VStack {
                        Button {
                            showingSheet.toggle()
                            
                        } label: {
                        Image(company.imagePath)
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 100)
                            }
                        Text(company.name)
                    }.sheet(isPresented: $showingSheet) {
                        ResourceDetailView()
                    }
                        
                    }
                    
                }
            }
        }
    }

    struct CompanyTileView_Previews: PreviewProvider {
        static var previews: some View {
            CompanyTileView()
        }
    }

