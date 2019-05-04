//
//  JuicerSource.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import Foundation

struct JuicerSource: Decodable {
    let id: Int
    let term: String
    let termType: String
    let source: String
    let options: String
    let name: String
    let allowed: String
    let disallowed: String
    let queue: Bool
}
