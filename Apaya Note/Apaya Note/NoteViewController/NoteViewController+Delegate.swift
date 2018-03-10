//
//  NoteViewController+Delegate.swift
//  Apaya Note
//
//  Created by Farhan Yuda Pahlevi on 3/10/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

extension NoteViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "note"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else{
            fatalError("Cell with identifier\(cellIdentifier) is not found")
        }
        
        guard let label = cell.textLabel else {
            fatalError("Label not found")
        }
        
        label.text = "Test title"
        return cell
    }
}

