//
//  UIViewControllerExtensions.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

extension UIViewController {
    ///
    /// This static property will return the name of the ViewController.
    /// - note: Assuming that storyboard identifier of UIViewController == class name
    ///
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
}
