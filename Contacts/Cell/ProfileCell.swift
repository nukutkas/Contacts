//
//  ProfileCell.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "ProfileCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .orange
    }
    func configure(with user: User) {
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
