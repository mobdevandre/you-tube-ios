//
//  JokeView.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-05-19.
//

import SwiftUI
import Alamofire
struct JokeView: View {
    @State var jokeTitle: String = ""
    @State var jokeResult: String = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Piadas")
                .font(.title)
            Text(jokeTitle)
                .font(.headline)
            Text(jokeResult)
                .font(.subheadline)
        }
        .padding()
        .onAppear {
            callAPI()
        }
    }
    
    func callAPI() {
        AF.request("https://eloquent-sprite-818b50.netlify.app/.netlify/functions/api/random_joke")
            .responseDecodable(of: JokeModal.self) { response in
                switch response.result {
                case .success(let data):
                    self.jokeTitle = data.setup
                    self.jokeResult = data.punchline
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}

#Preview {
    JokeView()
}
