//
//  ViewController.swift
//  Navigator
//
//  Created by Santosh Botre on 22/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // We are typealias navigator as in future this screen will allow us to navigate to different ViewControllers
    typealias flowNavigator = FavouriteNavigator
    var navigator: flowNavigator?
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

/// UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        cell.textLabel?.text = "Product Name: Product\(arc4random_uniform(100) + 1) with ID: \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

/// UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt: IndexPath) {
        //TODO: Navigate to the details screen
    }
}

// Action for screenflow
extension ViewController {
    @IBAction func favourite(_ sender: Any) {
        self.navigator?.viewController(self)
    }
}
