//
//  AlertView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-04-21.
//

import SwiftUI

struct AlertView: View {
    @State var showingAlert: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Alert View")
            Button("Show Alert") {
                showingAlert = true
            }
        }
        .alert(isPresented: $showingAlert){
            Alert(title: Text("Important Message"), message: Text("Hello, Alert"), dismissButton: .default(Text("Okay")))
        }
    }
}

#Preview {
    AlertView()
}
