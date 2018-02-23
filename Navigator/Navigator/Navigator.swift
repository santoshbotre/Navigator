//
//  Navigator.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

protocol Navigator {
    //TODO - All the common navigatation functionality we want for all the VC.
}

protocol FavouriteNavigator: Navigator {
    
    /**
     FavouriteNavigator to the FavouriteViewController
     
     - returns: void
     
     - parameters:
     - viewController: Current ViewController
     
     - version:
     0.1
     */

    func viewController(_ viewController: UIViewController)
}
