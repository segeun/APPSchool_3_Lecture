//
//  CombinationView.swift
//  ListProject(6.30)
//
//  Created by 최세근 on 2023/06/30.
//

import SwiftUI

struct CombinationView: View {
    var combination: Combination
    
    var body: some View {
        List {
            if combination.constructions.count > 0 {
                ForEach(combination.constructions) {
                    construct in
                    
                    NavigationLink {
                        DetailView(item: )
                    } label: {
                        Text("\(construct.name)")
                    }

                }
            } else {
                Text("해당 조합은 없는 조합")
            }
        }
        .navigationTitle("\(combination.combname)")
    }
}

struct CombinationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CombinationView(combination: Combination(combname: "4책략가 아지르", imageURLString: "", constructions: []))
        }
    }
}
