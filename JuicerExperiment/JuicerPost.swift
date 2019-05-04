//
//  JuicerPost.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import Foundation

struct JuicerPosts: Decodable {
    let currentPage: Int
    let limitValue: Int
    let items: [JuicerPost]
}

struct JuicerPost: Decodable {
//    let id: Int
//    let externalId: Int
//    let externalCreatedAt: Date
    let fullUrl: String
    let image: String
//    let external: String
    let likeCount: Int
    let commentCount: Int
//    let taggedUsers: String
    let posterUrl: String
    let posterId: String
//    let location: String
//    let height: Int
//    let width: Int
//    let edit: String
//    let position: Int
//    let deletedAt: Date
//    let deletedBy: String
//    let additionalPhotos: String
//    let externalLocationId: String
    let message: String
    let unformattedMessage: String
//    let description: String
//    let feed: String
//    let likes: String // alias for likesCount
//    let comments: String // alias for commentsCount
//    let video: String
    let posterImage: String
    let posterName: String
}
