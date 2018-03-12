//
//  UICollectionView+deselectEveryItem.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 29/12/2017.
//  Copyright © 2017 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func deselectEveryItem() {
        for indexPath in self.indexPathsForSelectedItems ?? [] {
            self.deselectItem(at: indexPath, animated: true)
            self.cellForItem(at: indexPath)?.isSelected = false
        }
    }
    
}
