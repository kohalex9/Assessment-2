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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
       
    }
}


extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AppleProductCell", for: indexPath) as? ProductListTableViewCell else {return UITableViewCell()}
        
        

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
