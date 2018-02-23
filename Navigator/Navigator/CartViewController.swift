//
//  CartViewController.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

class CartViewController: UITableViewController {

    private var navigator: FavouriteNavigator?
    
    static func instantiate(with navigator: FavouriteNavigator, forUserId: String) -> CartViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: CartViewController.storyboardIdentifier) as! CartViewController
        vc.navigator = navigator
        return vc
    }
    
    @IBOutlet weak var favouriteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath)

                cell.textLabel?.text = "Product Name: Product\(arc4random_uniform(10) + 1) with Quanity: \(indexPath.row)"
        // Configure the cell...

        return cell
    }
}

// Action for screenflow
extension CartViewController {
    @IBAction func favouriteButtonAction(_ sender: Any) {
        self.navigator?.viewController(self)
    }
}
