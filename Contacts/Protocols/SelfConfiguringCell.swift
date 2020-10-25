//
//  SelfConfiguringCell.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with user: ContactsModel.User)
}
