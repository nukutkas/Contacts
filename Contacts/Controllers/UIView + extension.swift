//
//  UIView + extension.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 25.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
}

