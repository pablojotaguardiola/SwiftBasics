//
//  UIView+addGradient.swift
//  Movies
//
//  Created by Pablo Guardiola on 15/08/2017.
//  Copyright © 2017 Pablo Guardiola. All rights reserved.
//

import Foundation
import UIKit

public enum GradientDirection {
    case top
    case bottom
}

extension UIView {
    
    public func addGradientLayer(with color: UIColor = UIColor.white, factor: Double = 1, directon: GradientDirection = .bottom, frame: CGRect? = nil){
        if let sublayers = self.layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
        let gradient = CAGradientLayer()
        gradient.frame = frame ?? self.bounds
        
        switch directon {
        case .top:
            gradient.colors = [color.cgColor, color.withAlphaComponent(0.0).cgColor, color.withAlphaComponent(0.0).cgColor]
            gradient.locations = [0.0, NSNumber(value: factor), 1]
            break
            
        case .bottom:
            gradient.colors = [color.withAlphaComponent(0.0).cgColor, color.withAlphaComponent(0.0).cgColor, color.cgColor]
            gradient.locations = [0.0, NSNumber(value: factor), 1]
        }
        self.layer.addSublayer(gradient)
    }
    
    public func removeSublayers() {
        if let sublayers = self.layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
    }
}
