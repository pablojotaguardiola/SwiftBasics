//
//  CALayer+setShadow.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 20/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    func setMenuItemShadow(bounds: CGRect) {
        
        self.cornerRadius = 20
        
        self.shadowColor = UIColor.lightGray.withAlphaComponent(0.65).cgColor
        self.shadowOpacity = 0.9
        self.shadowOffset = .zero
        self.shadowRadius = 14
        self.shadowPath = UIBezierPath(rect: bounds).cgPath
        self.shouldRasterize = true
        self.rasterizationScale = UIScreen.main.scale
        
    }
    
    func setShadow(bounds: CGRect, radius: CGFloat? = nil) {
        
        self.shadowColor = UIColor.gray.withAlphaComponent(0.95).cgColor
        self.shadowOpacity = 0.9
        self.shadowOffset = .zero
        self.shadowRadius = radius ?? self.cornerRadius
        self.shadowPath = UIBezierPath(rect: bounds).cgPath
        self.shouldRasterize = true
        self.rasterizationScale = UIScreen.main.scale
        
    }
}

