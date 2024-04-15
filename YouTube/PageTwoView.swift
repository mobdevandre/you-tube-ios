//
//  PageTwoView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-04-14.
//

import SwiftUI

struct PageTwoView: View {
    var name: String
    
    var body: some View {
        VStack {
            Text("Page Two")
            Text(name)
        }
    }
}

#Preview {
    PageTwoView(name: "Texto")
}
