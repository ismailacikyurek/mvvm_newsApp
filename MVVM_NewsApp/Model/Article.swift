//
//  Article.swift
//  MVVM_NewsApp
//
//  Created by İSMAİL AÇIKYÜREK on 22.05.2022.
//

import Foundation

struct ArticleList : Decodable {
    var articles : [Article]
}

struct Article : Decodable {
    var title : String?
    var author : String?
    var description : String?
}
