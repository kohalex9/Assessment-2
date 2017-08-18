//
//  AppleProduct.swift
//  45_Week2Assessment - KOH_ZHAN_HWA
//
//  Created by Alex Koh on 18/08/2017.
//  Copyright © 2017 AlexKoh. All rights reserved.
//

import Foundation
import UIKit

class AppleProduct {
    var name: String
    var releaseDate : String
    var imageName: String
    
    init(name: String, releaseDate: String, imageName: String) {
        self.name = name
        self.releaseDate = releaseDate
        self.imageName = imageName
    }
}
