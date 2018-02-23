//
//  AppNavigator.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import Foundation
import UIKit

class AppNavigator: Navigator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func initialViewController() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        viewController.navigator = self
        self.navigationController.setViewControllers([viewController], animated: false)
    }
}

extension AppNavigator: FavouriteNavigator {
    func viewController(_ viewController: UIViewController) {
        // FavouriteNavigator
        let loginViewController = FavouriteViewController.instantiate(with: self)
        navigationController.pushViewController(loginViewController, animated: true)
    }
    
    
}
