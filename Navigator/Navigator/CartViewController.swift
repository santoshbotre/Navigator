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
    @IBOutlet weak var favourite: UIButton!
    
    static func instantiate(with navigator: FavouriteNavigator, forUserId: String) -> CartViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: self.storyboardIdentifier) as! CartViewController
        vc.navigator = navigator
        return vc
    }
    
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

extension CartViewController {
    func presentingCartViewController() {
        self.favourite.setTitle("Done", for: .normal)
        self.favourite.removeTarget(self, action: #selector(favouriteButtonAction), for: .touchUpInside)
        self.favourite.addTarget(self, action: #selector(doneAction), for: .touchUpInside)

    }
    
    //then make a action method :
    @objc func doneAction(sender:UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
}
