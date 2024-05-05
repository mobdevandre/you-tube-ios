//
//  ImageView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-05-05.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Hello, Images!")
            Image(systemName: "checkmark.circle")
                .font(.largeTitle)
                .foregroundColor(.red)
            Image("apple-phone")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            //https://imgs.search.brave.com/ZtWB6y5bLbcgTRASWOgm-AWeCIcoHyR01X81KfusYY0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9idWls/ZGZpcmUuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE3LzEx/L3doaWNoLXRvLWRl/dmVsb3AtZm9yLWZp/cnN0LWFwcGxlLW9y/LWFuZHJvaWQtMS5q/cGc
            //IOS 15
            AsyncImage(url: URL(string: "https://imgs.search.brave.com/ZtWB6y5bLbcgTRASWOgm-AWeCIcoHyR01X81KfusYY0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9idWls/ZGZpcmUuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE3LzEx/L3doaWNoLXRvLWRl/dmVsb3AtZm9yLWZp/cnN0LWFwcGxlLW9y/LWFuZHJvaWQtMS5q/cGc")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            } placeholder: {
                Color.gray.opacity(0.1)
            }
        }
    }
}

#Preview {
    ImageView()
}
