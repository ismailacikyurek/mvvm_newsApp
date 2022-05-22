//
//  ViewController.swift
//  MVVM_NewsApp
//
//  Created by İSMAİL AÇIKYÜREK on 22.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
    
  private var articleListVM : ArticleListViewModel!
  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setUp()
    }
    

    
    
    func setUp() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&apiKey=64f68be76e59413cb9635f043bcd3927")!
        WebService().getData(url: url) { article in
            if let article = article {
                
                self.articleListVM = ArticleListViewModel(articles: article)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
         
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInsectıon(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArticleTableViewCell
        let articleVm = articleListVM.articleAtindex(indexPath.row)
        cell.lblTitle.text = articleVm.title
        cell.lblDetail.text = articleVm.description
        cell.lblauthor.text = articleVm.author
        return cell
    }
   
  

}

