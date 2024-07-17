//
//  CollectionViewCellController.swift
//  Lesson16HW
//
//  Created by Pavel on 17.07.2024.
//

import UIKit

class CollectionViewCellController: UICollectionViewCell {
    
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var buttonTapped: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    @IBAction func goButton(_ sender: UIButton) {
        
        buttonTapped?()
    }
}
