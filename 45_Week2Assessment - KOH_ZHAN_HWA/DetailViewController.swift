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
    
    @IBOutlet weak var productNameTextField: UITextField!
    @IBOutlet weak var releaseDateTextField: UITextField!
    @IBOutlet weak var editBtn: UIButton!
    
    @IBOutlet weak var doneBtn: UIButton!
    
    var appleProductToBeShown = AppleProduct(name: "", releaseDate: "", imageName: "", wikiUrl: "")
    var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = appleProductToBeShown.name
        
        productNameLabel.text = appleProductToBeShown.name
        releaseDateLabel.text = appleProductToBeShown.releaseDate
        productImageView.image = appleProductToBeShown.image
        
    }
    
    @IBAction func doneBtnTapped(_ sender: Any) {
        
        productNameTextField.isHidden = true
        releaseDateTextField.isHidden = true
        
        productNameLabel.isHidden = false
        releaseDateLabel.isHidden = false
        
        editBtn.isHidden = false
        doneBtn.isHidden = true
        
        appleProductToBeShown.name = productNameTextField.text!
        appleProductToBeShown.releaseDate = releaseDateTextField.text!
        
        productNameLabel.text = appleProductToBeShown.name
        releaseDateLabel.text = appleProductToBeShown.releaseDate
        
        self.title = appleProductToBeShown.name
    }
    @IBAction func editBtnTapped(_ sender: Any) {
        
        productNameTextField.isHidden = false
        releaseDateTextField.isHidden = false
        
        productNameLabel.isHidden = true
        releaseDateLabel.isHidden = true
        
        editBtn.isHidden = true
        doneBtn.isHidden = false
    }
    
    
    @IBAction func viewInWikiBtnTapped(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let destination = mainStoryboard.instantiateViewController(withIdentifier: "WebWikiViewController") as? WebWikiViewController else {return}
        destination.selectedAppleProduct = appleProductToBeShown
        
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
    @IBAction func changeTitle(_ sender: Any) {
        
        delegate?.changeTitleTo(newName: appleProductToBeShown.name)
        
    }
}

protocol DetailViewControllerDelegate {
    func changeTitleTo(newName: String)
}



