//
//  ViewController.swift
//  pullToRefresh
//
//  Created by Afriyandi Setiawan on 4/17/16.
//  Copyright © 2016 Afriyandi Setiawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theCollection: UICollectionView!
    
    let refreshController = UIRefreshControl()
    
    var cellCount:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshController.tintColor = UIColor.lightGrayColor()
        let color = UIColor.lightGrayColor()
        let attr = [NSForegroundColorAttributeName:color]
        let title = NSAttributedString(string: "Add New Cell", attributes: attr)
        refreshController.attributedTitle = title
        refreshController.addTarget(self, action: #selector(ViewController.refresh), forControlEvents: .ValueChanged)
        theCollection.addSubview(refreshController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refresh() {
        refreshController.beginRefreshing()
        cellCount += 1
        theCollection.reloadData()
        refreshController.endRefreshing()
    }
    
}

