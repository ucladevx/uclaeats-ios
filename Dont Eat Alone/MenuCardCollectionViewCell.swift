//
//  MenuCardCollectionViewCell.swift
//  Dont Eat Alone
//
//  Created by Ashwin Vivek on 2/27/18.
//  Copyright © 2018 Dont Eat Alone. All rights reserved.
//

import UIKit

class MenuCardCollectionViewCell: UICollectionViewCell {
    
    weak var parentVC: FirstViewController?
    @IBOutlet weak var menuCard: MenuCardView!
    @IBOutlet weak var viewMoreButton: UIButton!
    
    var diningHallName: String = ""
    var items: [Item] = []
    
    var parentView: UICollectionView!
    var index: IndexPath = []
    var computedHeight: CGFloat = 215
    
    @IBAction func viewMorePressed(_ sender: UIButton) {
        let diff = menuCard.data.count - 3
        let indexRow = index.row
        
        if let parentVC = parentVC{
            if (parentVC.computedHeight[indexRow] > parentVC.defaultHeight){
                computedHeight = self.frame.height-CGFloat(42*diff)
            }
            else{
                computedHeight = self.frame.height+CGFloat(42*diff)
            }
        }
        parentVC?.computedHeight[indexRow] = computedHeight
        parentView.reloadItems(at: [index])
    }
    
    func initializeData(data: [Item]) {
        menuCard.populateData(items: data)
    }
    
    
}
