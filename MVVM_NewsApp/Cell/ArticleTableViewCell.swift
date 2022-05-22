//
//  ArticleTableViewCell.swift
//  MVVM_NewsApp
//
//  Created by İSMAİL AÇIKYÜREK on 22.05.2022.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblauthor: UILabel!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
