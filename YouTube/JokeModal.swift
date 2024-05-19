//
//  JokeModal.swift
//  YouTube
//
//  Created by Andre Lemos on 2024-05-19.
//

import Foundation

struct JokeModal: Codable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}

//{"id":17,"type":"general","setup":"O que acontece se um panda tiver vários filhotes?","punchline":"Vira uma pandemia."}
