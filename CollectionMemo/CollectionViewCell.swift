//
//  CollectionViewCell.swift
//  CollectionMemo
//
//  Created by 古賀賢司 on 2019/03/16.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    func setupCell(model:Model) {
        titleLabel.text = model.title
        subTitleLabel.text = model.subTitle
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
        subTitleLabel.text = ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
