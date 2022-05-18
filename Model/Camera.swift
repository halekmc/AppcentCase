//
//  Camera.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import Foundation
// MARK: - Camera
struct Camera: Codable, Hashable {
    let id: Int?
    let name: String?
    let roverID: Int?
    let fullName: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case roverID = "rover_id"
        case fullName = "full_name"
    }
}



