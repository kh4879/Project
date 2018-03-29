//
//  ItemTableViewCell.swift
//  MySearchApp
//
//  Created by User8 on 2018/02/03.
//  Copyright © 2018年 User8. All rights reserved.
//

import UIKit

class ItemTableViewCell:UITableViewCell {
    
    @IBOutlet weak var itemImageView:UIImageView!
    @IBOutlet weak var itemTitleLabel:UILabel!
    @IBOutlet weak var itemPriceLabel:UILabel!
    
    var itemUrl:String?
    
    override func awakeFromNib(){
        super.awakeFromNib()
    }
    override func setSelected(_ selected:Bool,animated:Bool){
        super.setSelected(selected,animated:animated)
    }
    override func prepareForReuse() {
        itemImageView.image = nil
    }

}


