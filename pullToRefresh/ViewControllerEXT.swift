//
//  ViewControllerEXT.swift
//  pullToRefresh
//
//  Created by Afriyandi Setiawan on 4/17/16.
//  Copyright © 2016 Afriyandi Setiawan. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let collCell:CollectionCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell",
                                                                             forIndexPath: indexPath) as! CollectionCell
        
        collCell.cellNumber.text = "Cell #\(String(indexPath.item + 1))"
        
        return collCell
    }
    
}