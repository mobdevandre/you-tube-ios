//
//  ListView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-04-07.
//

import SwiftUI

struct ListView: View {
    
    var items = [MyItem(name: "Item 1") , MyItem(name: "Item 2"), MyItem(name: "Item 3"), MyItem(name: "Item 4")]
    var body: some View {
        VStack(spacing: 10){
            List {
                ForEach(items, id: \.id) { item in
                    Text(item.name)
                }
            }
        }
    }
}

#Preview {
    ListView()
}

struct MyItem: Identifiable {
    let id = UUID()
    let name: String
}
