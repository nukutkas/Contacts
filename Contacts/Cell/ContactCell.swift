//
//  ContactCell.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//
import UIKit

class ContactCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "ContactCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
    }
    
    func configure(with user: User) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

