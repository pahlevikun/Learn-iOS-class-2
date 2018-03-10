//
//  NoteViewController+UITableView+Delegates.swift
//  Apaya Note
//
//  Created by Farhan Yuda Pahlevi on 3/10/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

extension NoteViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
