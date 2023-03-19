//
//  User.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 19.03.2023.
//

import Foundation

struct User: Decodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let balance: Double
    
}
