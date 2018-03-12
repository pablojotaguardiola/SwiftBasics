//
//  UIImageView+tint.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 24/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func tint(with color: UIColor) {
        self.image = self.image?.withRenderingMode(.alwaysTemplate)
        self.tintColor = color
    }
}
