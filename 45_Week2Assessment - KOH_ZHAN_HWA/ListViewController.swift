//
//  ListViewController.swift
//  45_Week2Assessment - KOH_ZHAN_HWA
//
//  Created by Alex Koh on 18/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var appleProducts: [AppleProduct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        //Make 5 instances of AppleProducts
        let appleI = AppleProduct(name: "Apple I", releaseDate: "July 1", imageName: "Apple_I")
        appleProducts.append(appleI)
        let appleWatch = AppleProduct(name: "Apple Watch", releaseDate: "September 16", imageName: "AppleWatch")
        appleProducts.append(appleWatch)
        let ipadPro = AppleProduct(name: "Ipad Pro", releaseDate: "June 5", imageName: "IPad_Pro")
        appleProducts.append(ipadPro)
        let iphone6 = AppleProduct(name: "Iphone 6", releaseDate: "September 7", imageName: "IPhone_6")
        appleProducts.append(iphone6)
        let macbookRetina = AppleProduct(name: "Macbook with Retina Display", releaseDate: "February 13", imageName: "MacbookRetina")
        appleProducts.append(macbookRetina)
       
    }
}


extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AppleProductCell", for: indexPath) as? ProductListTableViewCell else {return UITableViewCell()}
        
        let appleProd = appleProducts[indexPath.row]
        
        cell.productNameLabel.text = appleProd.name
        cell.productReleaseDateLabel.text = appleProd.releaseDate
        cell.productImageView.image = appleProd.image
        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
