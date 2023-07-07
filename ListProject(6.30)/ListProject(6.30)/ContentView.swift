//
//  ContentView.swift
//  ListProject(6.30)
//
//  Created by 최세근 on 2023/06/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    AsyncImage(url: combination.imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                }
                
                Section {
                    ForEach(combination.constructions) { construct in
                        
                        
                        NavigationStack {
                            CombinationView(combination: construct)
                            // CombinationView 가 들어가야함
                        } label: {
                            Text("\(combination.combname)")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
