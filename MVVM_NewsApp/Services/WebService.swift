//
//  WebService.swift
//  MVVM_NewsApp
//
//  Created by İSMAİL AÇIKYÜREK on 22.05.2022.
//

import Foundation
import UIKit

class WebService {
    
    func getData(url : URL,compleiton : @escaping ([Article]?) -> () ) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                compleiton(nil)
            } else if let data = data {
               let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    compleiton(articleList.articles)
                }
            }
        }.resume()
        
    }
}
