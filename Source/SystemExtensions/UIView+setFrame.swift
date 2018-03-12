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
    
    public mutating func setXPosition(x: CGFloat) { self.origin.x = x }
    
    public mutating func setYPosition(y: CGFloat) { self.origin.y = y }
    
    public mutating func setWidth(newWidth: CGFloat) {
        
        var size = self.size
        size.width = newWidth
        
        self.size = size
        
    }
    
    public mutating func setHeight(newHeight: CGFloat) {
        
        var size = self.size
        size.height = newHeight
        
        self.size = size
    }
    
    
}

extension CGSize {
    
    public mutating func setWidth(newWidth: CGFloat) {
        self.width = newWidth
    }
    
    public mutating func setHeight(newHeight: CGFloat) {
        self.height = newHeight
    }
    
}
