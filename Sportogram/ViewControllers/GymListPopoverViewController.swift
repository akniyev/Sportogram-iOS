//
//  GymListPopoverViewController.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 26/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import UIKit

extension GymListPopoverViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "Спортзал №\(indexPath.row)"
        cell.detailTextLabel?.text = "Дополнительная информация о спортзале №\(indexPath.row)"
        return cell
    }
    
    
}

class GymListPopoverViewController : UIViewController {
    @IBAction func btnHideTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
