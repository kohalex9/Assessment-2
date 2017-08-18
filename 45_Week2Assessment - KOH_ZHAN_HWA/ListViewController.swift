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
        tableView.reloadData()
        
        tableView.delegate = self
        
        self.title = "List of Apple Products"
        
        //Make 5 instances of AppleProducts
        let appleI = AppleProduct(name: "Apple I", releaseDate: "July 1", imageName: "Apple_I", wikiUrl: "https://en.wikipedia.org/wiki/Apple_I")
        appleProducts.append(appleI)
        let appleWatch = AppleProduct(name: "Apple Watch", releaseDate: "September 16", imageName: "AppleWatch", wikiUrl: "https://en.wikipedia.org/wiki/Apple_Watch")
        appleProducts.append(appleWatch)
        let ipadPro = AppleProduct(name: "Ipad Pro", releaseDate: "June 5", imageName: "IPad_Pro", wikiUrl: "https://en.wikipedia.org/wiki/IPad_Pro")
        appleProducts.append(ipadPro)
        let iphone6 = AppleProduct(name: "Iphone 6", releaseDate: "September 7", imageName: "IPhone_6", wikiUrl: "https://en.wikipedia.org/wiki/IPhone_6")
        appleProducts.append(iphone6)
        let macbookRetina = AppleProduct(name: "Macbook with Retina Display", releaseDate: "June 5", imageName: "MacbookRetina", wikiUrl: "https://en.wikipedia.org/wiki/MacBook_Pro")
        appleProducts.append(macbookRetina)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedAppleProduct = appleProducts[indexPath.row]
        
        //Go to detailVC when the specific apple product is clicked
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let destination = mainStoryBoard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return}
        
        destination.delegate = self
        
        destination.appleProductToBeShown = selectedAppleProduct
        
        navigationController?.pushViewController(destination, animated: true)
    }
}

extension ListViewController: DetailViewControllerDelegate {
    func changeTitleTo(newName: String) {
        self.title = newName
    }
}


















