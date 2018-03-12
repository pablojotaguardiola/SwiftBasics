//
//  CGRect+plusPadding.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 24/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    
    public func plus(padding: CGFloat) -> CGRect {
        
        return CGRect(
            x: self.origin.x - padding,
            y: self.origin.y - padding,
            width: self.width + (padding * 2.0),
            height: self.height + (padding * 2.0)
        )
        
    }
    
}
