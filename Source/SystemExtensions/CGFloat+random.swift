//
//  CGFloat+random.swift
//  PabloGuardiola-SQLI
//
//  Created by Pablo Guardiola on 05/03/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
    
}
