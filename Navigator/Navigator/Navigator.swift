//
//  Navigator.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

/**
 Navigator is a protocol two have an abstraction between the ViewControllers.
 
 It will help to manage the ViewController navigation workflow in the seemless mannar.
 
 - version:
 0.1
 */

protocol Navigator {
    //TODO - All the common navigatation functionality we want for all the VC.
}

protocol FavouriteNavigator: Navigator {
    
    /**
     FavouriteNavigator to launch/show/push the FavouriteViewController
     
     - returns: void
     
     - parameters:
     - viewController: Current ViewController
     
     */

    func viewController(_ viewController: UIViewController)
}

protocol CartNavigator: Navigator {
    
    /**
    CartNavigator to the CartViewController
    
    - returns: void
    
    - parameters:
        - viewController: Current ViewController
        - forUserId: user id
    */
    func viewController(_ viewController: UIViewController, forUserId: String, show: ShowType)
}

enum ShowType {
    case push
    case present
}
