//
//  JuicerFeed.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import Foundation

struct JuicerFeed: Decodable {
    let id: Int
//    let slug: String
    let name: String
//    let plan: String
//    let updateFrequency: Int
//    let lastSynced: Date
//    let maxSources: Int
    // ...
//    let interval: Int
//    let width: Int
//    let height: Int
//    let columns: Int
//    let order: String
//    let displayFilter: String
//    let displayFilterType: Bool
//    let coloredIcons: Bool
//    let photos: Bool
//    let videos: Bool
//    let lazyLoad: Bool
//    let overlay: Bool
//    let videoOverlay: Bool
//    let infiniteScroll: Bool
//    let poll: Bool
//    let disallowed: String
//    let allowed: String
//    let distance: Int
//    let location: String
//    let lat: Decimal
//    let lng: Decimal
//    let profanity: Bool
//    let preventDuplicates: Bool
//    let queue: Bool
//    let revalidating: Bool
//    let urmMessage: String
//    let pageViewCount: Int
//    let customCss: String
//    let colors: JuicerColor
    let posts: JuicerPosts
//    let sources: [JuicerSource]
//    let socialAccounts: [JuicerSocialAccount]
}
