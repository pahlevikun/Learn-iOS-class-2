//
//  ViewController.swift
//  Apaya Note
//
//  Created by Farhan Yuda Pahlevi on 3/10/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate,
UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "note"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else{
            fatalError("Cell with identifier\(cellIdentifier) is not found")
        }
        
        guard let label = cell.textLabel else {
            fatalError("Label not found")
        }
        cell.textLabel = "Test Title"
        return cell
    }
}
