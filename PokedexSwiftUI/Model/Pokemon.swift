//
//  Pokemon.swift
//  PokedexSwiftUI
//
//  Created by Atakan Apan on 8/10/22.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}
