//
//  UIBarButtonItem+getView.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 08/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    public func getView() -> UIView? {
        return self.value(forKey: "view") as? UIView
    }
}
