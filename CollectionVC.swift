//
//  CollectionVC.swift
//  AnimatedButton
//
//  Created by MAc33 on 30/12/16.
//  Copyright © 2016 JadavMehul. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Comman().animateButton(button: self.likeButton)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
