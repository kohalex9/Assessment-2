//
//  WebWikiViewController.swift
//  45_Week2Assessment - KOH_ZHAN_HWA
//
//  Created by Alex Koh on 18/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import UIKit

class WebWikiViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var selectedAppleProduct: AppleProduct = AppleProduct(name: "", releaseDate: "", imageName: "", wikiUrl: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTheUrl(with: selectedAppleProduct.wikiUrl)
    }
    
    func loadTheUrl(with String: String) {
        
        guard let url = URL(string : String) else {
            print("Invalid urlString: \(String)")
            return
        }
        
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        
    }
    
    
}
