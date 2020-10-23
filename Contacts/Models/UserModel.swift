//
//  UserModel.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

struct User: Hashable, Decodable {
    var fullname: String
    var imageString: String
    var firstCharacter:  String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
