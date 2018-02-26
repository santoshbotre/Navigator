//
//  AppNavigator.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import Foundation
import UIKit

/**
 AppNavigator is responsible for initiating the inital workflow on its initalization.

 In `applicationLaunchWithFinishLaunching()` create the instance of AppNavigator by passing the navigationcontroller.

 - version:
 0.1
 */

class AppNavigator: Navigator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func initialViewController() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: ViewController.storyboardIdentifier) as! ViewController
        viewController.navigator = self
        self.navigationController.setViewControllers([viewController], animated: false)
    }
}

/**
 AppNavigator(FavouriteNavigator) extension is responsible for managing the FavouriteViewController initaliation and showing it in the view.
 
 - version:
 0.1
 */

extension AppNavigator: FavouriteNavigator {
    
    func viewController(_ viewController: UIViewController) {
        // FavouriteNavigator
        let favouriteViewController = FavouriteViewController.instantiate(with: self)
        navigationController.pushViewController(favouriteViewController, animated: true)
    }
}

extension AppNavigator: CartNavigator {
    
    func viewController(_ viewController: UIViewController, forUserId: String, show: ShowType) {
        let cartViewController = CartViewController.instantiate(with: self, forUserId: forUserId)
        cartViewController.title = forUserId
        
        switch show {
        case .present:
            let navigationController = UINavigationController.init(rootViewController: cartViewController)
            viewController.present(navigationController, animated: true, completion: nil)
            cartViewController.presentingCartViewController()
        case .push:
            navigationController.pushViewController(cartViewController, animated: true)
        }
    }    
}
