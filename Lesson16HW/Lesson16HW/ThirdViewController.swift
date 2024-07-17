//
//  ThirdViewController.swift
//  Lesson16HW
//
//  Created by Pavel on 17.07.2024.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var selectedIndexPath: Int?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitleLabel()
    }
    
    func setupTitleLabel () {
        
        if let indexPath = selectedIndexPath {
            
            titleLabel.text = "Title \(indexPath)"
        } else {
            titleLabel.text = "Title Error"
        }
    }
}
