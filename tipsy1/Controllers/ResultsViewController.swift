//
//  ResultsViewController.swift
//  tipsy1
//
//  Created by Денис Денисов on 27.05.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var result = ""
    var text = ""
    var totalBill = ""
    var countOfPeople = ""
    var tip = ""
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
        settingsLabel.text = "Разделено между \(countOfPeople) с \(tip) чаевыми."
    }
}
