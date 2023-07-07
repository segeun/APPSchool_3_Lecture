//
//  GameData.swift
//  ListProject(6.30)
//
//  Created by 최세근 on 2023/06/30.
//

import Foundation

protocol ImageURL {
    var imageURLString: String { get set }
    var imageURL: URL { get }
}



struct Combination: ImageURL {
    var combname: String
    var imageURLString: String
    
    var imageURL: URL {
        get {
            return URL(string: imageURLString)!
        }
    }
    
    var constructions: [Construction]
    // 하나의 struct 타입을 배열로 받아야함 ex) var grades: [Grade]
}

struct Construction: Identifiable {
    var id: UUID = UUID()
    var name: String
    var item: [Item]
}
    

struct Item: Identifiable, ImageURL {
    var id: UUID = UUID()
    var itemName: [String]
    
    var imageURLString: String
    var imageURL: URL {
        get {
            return URL(string: imageURLString)!
        }
    }
    
    var champion: [Champion]
}

struct Champion: Identifiable, ImageURL {
    var id: UUID = UUID()
    var name: [String]
    
    var imageURLString: String
    var imageURL: URL {
        get {
            return URL(string: imageURLString)!
        }
    }
}



let combination: Combination = Combination(combname: "시즌9 조합구성",
    imageURLString: "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt4fba24db5fbd6072/626209bdd22f554a53caada8/TFT_Evergreen_New-User-Library-Card_v01_r03_Aveiger.jpg",
    constructions: [
        Construction(name: "4책략가 아지르", item: [
            Item(itemName: ["구인수", "거결", "거학"], imageURLString: "item1", champion: [
                Champion(name: ["스웨인", "탈리야", "티모", "가렌"], imageURLString: "champion1")
            ])
        
        ])
    ])






