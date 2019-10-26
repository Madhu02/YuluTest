//
//  Router.swift
//  YuluTestApp
//
//  Created by Madhu Ailp on 26/10/19.
//  Copyright © 2019 Madhu Ailp. All rights reserved.
//

import Foundation

//Each cases will represent the requests endpoint you want to send to the API.
enum Router {
    case fetchAllPlaces
    case addNewPlace
    case fetchPlaceFromId
    case updatePlace
    case creatPlaceWithImage
    case getPlaceImage
    case updatePlaceWithImage
    
    var scheme : String {
        switch self {
        case .fetchAllPlaces, .addNewPlace, .fetchPlaceFromId, .updatePlace, .creatPlaceWithImage, .getPlaceImage, .updatePlaceWithImage:
            return "http"
        }
    }
    
    var host : String {
        switch self {
        case .fetchAllPlaces, .addNewPlace, .fetchPlaceFromId, .updatePlace, .creatPlaceWithImage, .getPlaceImage, .updatePlaceWithImage:
            return "35.154.73.71/api/v1"
        }
    }
    
    var path : String {
        switch self {
        case .fetchAllPlaces, .addNewPlace, .fetchPlaceFromId, .updatePlace, .creatPlaceWithImage, .updatePlaceWithImage:
            return "/places"
        case .getPlaceImage:
            return "/image"
        }
    }
    
    var method : String {
        switch self {
        case .fetchAllPlaces, .fetchPlaceFromId, .getPlaceImage:
            return "GET"
        case .addNewPlace, .creatPlaceWithImage:
            return "POST"
        case .updatePlaceWithImage, .updatePlace:
            return "PUT"
            
        }
    }
}


