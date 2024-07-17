//
//  SecondCollectionView.swift
//  Lesson16HW
//
//  Created by Pavel on 17.07.2024.
//

import UIKit

class SecondCollectionView: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedIndexPath: Int?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

//MARK: - UICollectionViewDelegate

extension SecondCollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndexPath = indexPath.row
        performSegue(withIdentifier: "ThirdPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdPage" {
            if let thirdVC = segue.destination as? ThirdViewController {
                thirdVC.selectedIndexPath = selectedIndexPath
                
            }
        }
    }
}

//MARK: - UICollectionViewDataSource

extension SecondCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCell", for: indexPath) as? SecondCollectionViewCell else {
            assertionFailure()
            return UICollectionViewCell()
        }
        
        cell.uiView.backgroundColor = .randomColor()
        cell.rowLabel.text = "IndexPath Row: \(indexPath.row)"
        
        return cell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout

extension SecondCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = collectionView.bounds.width / 4
        
        return CGSize(width: screenWidth, height: screenWidth)
    }
    

}
