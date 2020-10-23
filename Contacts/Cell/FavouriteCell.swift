//
//  FavouriteCell.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//
import UIKit

class FavouriteCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "FavouriteCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
    }
    
    func configure(with user: User) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


