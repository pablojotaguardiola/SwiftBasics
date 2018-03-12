//
//  UIView+setFrame.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 16/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    
    mutating func setXPosition(x: CGFloat) { self.origin.x = x }
    
    mutating func setYPosition(y: CGFloat) { self.origin.y = y }
    
    mutating func setWidth(newWidth: CGFloat) {
        
        var size = self.size
        size.width = newWidth
        
        self.size = size
        
    }
    
    mutating func setHeight(newHeight: CGFloat) {
        
        var size = self.size
        size.height = newHeight
        
        self.size = size
    }
    
    
}

extension CGSize {
    
    mutating func setWidth(newWidth: CGFloat) {
        self.width = newWidth
    }
    
    mutating func setHeight(newHeight: CGFloat) {
        self.height = newHeight
    }
    
}
