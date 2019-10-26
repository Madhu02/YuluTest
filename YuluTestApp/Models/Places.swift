//
//  Places.swift
//  YuluTestApp
//
//  Created by Madhu Ailp on 25/10/19.
//  Copyright © 2019 Madhu Ailp. All rights reserved.
//

import Foundation

struct Myplaces: Codable {
    var id: String?
    var title: 	String?
    var latitude: Double?
    var longitude: Double?
    var imageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "product_id"
        case title = "title"
        case latitude = "latitude"
        case longitude = "longitude"
        case imageUrl = "imageUrl"
    }
}
