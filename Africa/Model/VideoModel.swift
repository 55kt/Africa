//
//  VideoModel.swift
//  Africa
//
//  Created by Vlad on 16/12/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
