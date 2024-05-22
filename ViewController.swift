//
//  ViewController.swift
//  kadai11pre-3
//
//  Created by 鎌田剛史 on R 5/09/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var prefectureLabel: UILabel!
    
    @IBAction func Choose( _ sendr: Any) {
    }
    
    @IBAction func exitFromTableByTapCell(segue:UIStoryboardSegue) {
        if let tableViewController = segue.source as? TableViewController {
            if let indexPath = tableViewController.tableView.indexPathForSelectedRow {
                self.prefectureLabel.text = tableViewController.names[indexPath.row]
            }
        }
    }
    
    @IBAction func exitCancel(segue:UIStoryboardSegue) {
    }
}

