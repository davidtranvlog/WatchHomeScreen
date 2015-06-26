//
//  CollectionViewCell.swift
//  WatchHomeScreen
//
//  Created by Duc Tran on 6/25/15.
//  Copyright (c) 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell
{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.layer.cornerRadius = frame.width / 2.0
        self.contentView.layer.backgroundColor = UIColor.randomColor().CGColor
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
