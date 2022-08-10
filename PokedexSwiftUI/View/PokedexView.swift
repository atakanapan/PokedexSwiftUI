//
//  PokedexView.swift
//  PokedexSwiftUI
//
//  Created by Atakan Apan on 8/10/22.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, alignment: .center, spacing: 20 , content: {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                })
                .padding(.top, 20)
                .padding([.leading, .trailing], 8)
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
