//
//  UIButton+badge.swift
//  TestProject
//
//  Created by Pablo Guardiola on 31/01/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    public var badge: String? {
        get {
            return self.badge
        }
        set {
            addBadgeToButon(badge: newValue)
        }
    }
    
    fileprivate func addBadgeToButon(
        badge: String?,
        badgeBackgroundColor: UIColor? = UIColor.red,
        badgeTextColor: UIColor? = UIColor.white,
        badgeFont: UIFont? = UIFont.systemFont(ofSize: 12.0)
    ) {
        
        guard
            let barButtonItemView = self.value(forKey: "view") as? UIView,
            let barButtonView = barButtonItemView.subviews.first
        else {
            return
        }
        
        for view in barButtonView.subviews {
            if view.tag == badgeTag {
                view.removeFromSuperview()
            }
        }
        
        let badgeLabel = UILabel()
        
        badgeLabel.tag = badgeTag
        badgeLabel.text = badge
        badgeLabel.textColor = badgeTextColor
        badgeLabel.backgroundColor = badgeBackgroundColor
        badgeLabel.font = badgeFont
        badgeLabel.sizeToFit()
        badgeLabel.textAlignment = .center
        let badgeSize = badgeLabel.frame.size
        
        let height = max(18, Double(badgeSize.height) + 5.0)
        let width = max(height, Double(badgeSize.width) + 10.0)
        
        let x = barButtonView.frame.width - CGFloat((width / 2.0))
        let y = CGFloat(-(height / 2.0))
        badgeLabel.frame = CGRect(x: x, y: y, width: CGFloat(width), height: CGFloat(height))
        
        badgeLabel.layer.cornerRadius = badgeLabel.frame.height/2
        badgeLabel.layer.masksToBounds = true
        barButtonView.addSubview(badgeLabel)
        badgeLabel.isHidden = badge != nil ? false : true
    }
}
