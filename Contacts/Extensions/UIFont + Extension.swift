//
//  UIFont + Extension.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 25.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

extension UIFont {
    
    enum RoundedWeight {
        case regular
        case medium
        case semibold
    }
    
    static func sfProRounded(ofSize size: CGFloat, weight: RoundedWeight) -> UIFont? {
        switch weight {
       
        case .regular:
            return UIFont.init(name: "SFproRounded-Regular", size: size)
        case .medium:
            return UIFont.init(name: "SFproRounded-Medium", size: size)
        case .semibold:
            return UIFont.init(name: "SFproRounded-Semibold", size: size)
        }
    }
    
}


