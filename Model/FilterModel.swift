//
//  FilterModel.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//
import Foundation
// MARK: - FilterModel
struct FilterModel: Codable, Hashable {
    let FHAZ: String?
    let RHAZ: String?
    let MAST: String?
    let CHEMCAM: String?
    let MAHLI: String?
    let MARDI:String?
    let NAVCAM: String?
    let PANCAM: String?
    let MINITES: String?
    
    
    enum CameraName: String, Codable {
        case mast = "MAST"
        case fhaz = "FHAZ"
        case rhaz = "RHAZ"
        case chemcam = "CHEMCAM"
        case mahlı = "MAHLI"
        case mardı = "MARDI"
        case navcam = "NAVCAM"
        case pancam = "PANCAM"
        case mınıtes = "MINITES"
    }
}
