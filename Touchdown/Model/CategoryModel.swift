//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-19.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
