//
//  Photos.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import Foundation
// MARK: - Photo
struct Photo: Codable, Hashable{
    let id, sol: Int?
    let camera: Camera?
    let imgSrc: String?
    let earthDate: String?
    let rover: Rover?

    enum CodingKeys: String, CodingKey {
        case id, sol, camera
        case imgSrc = "img_src"
        case earthDate = "earth_date"
        case rover
    }
}



extension Photo {
    static let dummyData =  Photo(id: 1, sol: 1, camera: Camera(id: 1, name: "bıdıbıdı", roverID: 1, fullName: "name"), imgSrc: "https://i.pinimg.com/originals/17/02/88/170288c5def516b41fae995f8ece7a6a.jpg", earthDate: "Bugün", rover: Rover(id: 1, name: "Rover", landingDate: "Bugün", launchDate: "O da Bugün", status: "Hazır"))
}
