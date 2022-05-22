//
//  ArticleViewModel.swift
//  MVVM_NewsApp
//
//  Created by İSMAİL AÇIKYÜREK on 22.05.2022.
//

import Foundation

struct ArticleListViewModel {
    let articles : [Article]
}

extension ArticleListViewModel {
    var numberOfSections : Int {
        articles.count
    }
    
    
    func numberOfRowsInsectıon(_ section : Int) -> Int {
        return articles.count
    }
    
    func articleAtindex(_ index : Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}












struct ArticleViewModel {
    private let article : Article
    
}

extension ArticleViewModel {
    init(_ article : Article) {
        self.article = article
    }
        
}

extension ArticleViewModel {
    var title  : String?  {
        return self.article.title
    }
    var author  : String?  {
        return self.article.author
    }
    var description  : String?  {
        return self.article.description
    }
        
}
