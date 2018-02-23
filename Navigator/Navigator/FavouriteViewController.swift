//
//  FavouriteViewController.swift
//  Navigator
//
//  Created by Santosh Botre on 23/02/18.
//  Copyright © 2018 Santosh Botre. All rights reserved.
//

import UIKit

class FavouriteViewController: UITableViewController {

    static func instantiate(with navigator: Navigator) -> FavouriteViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FavouriteViewController") as! FavouriteViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteCell", for: indexPath)
        cell.textLabel?.text = "Product Name: Product\(arc4random_uniform(10) + 1) with ID: \(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_: UITableView, didSelectRowAt: IndexPath) {
        //TODO: Navigate to the details screen
    }

}

