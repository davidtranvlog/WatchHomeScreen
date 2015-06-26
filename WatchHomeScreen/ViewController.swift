//
//  ViewController.swift
//  WatchHomeScreen
//
//  Created by Duc Tran on 6/25/15.
//  Copyright (c) 2015 Developer Inspirus. All rights reserved.
//

import UIKit
w
class ViewController: UIViewController, UICollectionViewDataSource
{
    @IBOutlet weak var collectionView: UICollectionView!

    let cellCount = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.collectionViewLayout = CollectionViewLayout()
        self.collectionView.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! CollectionViewCell
        return cell
    }

}











