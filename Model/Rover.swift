//
//  Rover.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import Foundation
// MARK: - Rover
struct Rover: Codable, Hashable {
    let id: Int?
    let name: String?
    let landingDate, launchDate: String?
    let status: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case landingDate = "landing_date"
        case launchDate = "launch_date"
        case status
    }
}
