//
//  DetailViewController.swift
//  45_Week2Assessment - KOH_ZHAN_HWA
//
//  Created by Alex Koh on 18/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    
    var appleProductToBeShown = AppleProduct(name: "", releaseDate: "", imageName: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = appleProductToBeShown.name
        releaseDateLabel.text = appleProductToBeShown.releaseDate
        productImageView.image = appleProductToBeShown.image
        
        
    }


}



