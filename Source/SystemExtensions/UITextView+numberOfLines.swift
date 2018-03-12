//
//  UITextView+numberOfLines.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 17/01/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension UITextView{
    
    public func numberOfLines() -> Int{
        if let fontUnwrapped = self.font{
            return Int(self.contentSize.height / fontUnwrapped.lineHeight)
        }
        return 0
    }
    
}
