//
//  CollectionViewLayout.swift
//  WatchHomeScreen
//
//  Created by Duc Tran on 6/25/15.
//  Copyright (c) 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class CollectionViewLayout: UICollectionViewLayout
{
    let COLS = 5
    let ROWS = 6
    let interimSpace: CGFloat = 0.0
    let itemSize: CGFloat = 80
    
    var center: CGPoint {
        return CGPoint(x: (self.cViewSize.width) / 2.0, y: (self.cViewSize.height) / 2.0)
    }
    
    var cellCount: Int {
        return COLS*ROWS
    }
    
    var cViewSize: CGSize {
        return self.collectionView!.frame.size
    }
    
    var a: CGFloat {
        return 1.5 * self.cViewSize.width
    }
    
    var b: CGFloat {
        return 1.5 * self.cViewSize.height
    }
    
    let c: CGFloat = 10
    
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
    
    override func collectionViewContentSize() -> CGSize {
        return CGSizeMake(self.itemSize * CGFloat(COLS) + 100, self.itemSize * CGFloat(ROWS) + 100)
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]! {
        var attributes = [AnyObject]()
        for i in 0 ..< cellCount {
            let indexPath = NSIndexPath(forItem: i, inSection: 0)
            attributes.append(self.layoutAttributesForItemAtIndexPath(indexPath)!)
        }
        return attributes as? [UICollectionViewLayoutAttributes]
    }
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
    {
        let attributes = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
        
        let oIndex = indexPath.item % COLS // 1
        let vIndex = (indexPath.item - oIndex) / COLS // 2
        
        var x = CGFloat(oIndex) * self.itemSize // 3
        var y = CGFloat(vIndex) * self.itemSize // 4
        
        if vIndex % 2 != 0 { // 5
            x += self.itemSize / 2.0
        }
        
        attributes.center = CGPoint(x: x, y: y) // 6
        
        let offset = self.collectionView!.contentOffset // 7
        x -= (self.center.x + CGFloat(offset.x)) // 8
        y -= (self.center.y + CGFloat(offset.y)) // 9
        
        x = -x*x/(a*a) // 10
        y = -y*y/(b*b) // 11
        var z = c * (x+y) + 1.0 // 12
        z = z < 0.0 ? 0.0 : z // 13
        
        attributes.transform = CGAffineTransformMakeScale(z, z) // 14
        attributes.size = CGSize(width: self.itemSize, height: self.itemSize) // 15
        
        return attributes
    }
    
    
}



























