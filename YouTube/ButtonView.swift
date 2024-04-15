//
//  ButtonView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-04-02.
//

import SwiftUI

struct ButtonView: View {
    @State var title = "Opa"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            Button("Press"){
                title = "Opa, Press 1"
            }
            .accentColor(.green)
            .controlSize(.extraLarge)
            
            Button(action: {
                title = "Opa, Press 2"
            }) {
                HStack{
                    Image(systemName: "globe")
                    Text("Press 2")
                }.padding()
                    .background(.green)
                    .cornerRadius(10)
            }
            .shadow(color:.red, radius: 15)
        }
    }
}

#Preview {
    ButtonView()
}
