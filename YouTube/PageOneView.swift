//
//  PageOneView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-04-14.
//

import SwiftUI

struct PageOneView: View {
    
    var name = "Youtube"
    var body: some View {
        NavigationView {
            VStack {
                Text("Page One")
                    .navigationTitle("Pages")
                NavigationLink(destination: PageTwoView(name: name)) {
                    Text("GO TO PAGE TWO")
                }
                .padding()
            }
        }
    }
}

#Preview {
    PageOneView()
}
