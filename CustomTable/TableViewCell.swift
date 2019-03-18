//
//  TableViewCell.swift
//  CustomTable
//
//  Created by 古賀賢司 on 2019/03/17.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var titleTitle: UILabel!
    @IBOutlet weak var titleDetail: UILabel!
    
    @IBOutlet weak var abstView: UIView!
    @IBOutlet weak var abstDetail: UILabel!
    
    @IBOutlet weak var concreteView: UIView!
    @IBOutlet weak var concreteDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let leftBorder = CALayer()
        leftBorder.frame = CGRect(x: 0, y: 0, width: 0.3, height:titleView.frame.height)
        leftBorder.backgroundColor = UIColor.lightGray.cgColor
        
        let rightBorder = CALayer()
        rightBorder.frame = CGRect(x: abstView.frame.width, y: 0, width: 0.3, height:titleView.frame.height)
        rightBorder.backgroundColor = UIColor.lightGray.cgColor
        
        abstView.layer.addSublayer(leftBorder)
        abstView.layer.addSublayer(rightBorder)

    }
    
    func setupCell(model: Model) {
        titleTitle.text = model.titleTitle
        
        if let text = model.titleDetail{
            titleDetail.text = text
        }
        if let text = model.abstDetail{
            abstDetail.text = text
        }
        if let text = model.concreteDetail{
            concreteDetail.text = text
        }
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
