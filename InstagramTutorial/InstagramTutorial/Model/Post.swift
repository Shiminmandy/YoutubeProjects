//
//  Post.swift
//  InstagramTutorial
//
//  Created by Shimin Cheng on 2025-02-05.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable,Codable{
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?  //
    
}

extension Post{
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 19,
              imageUrl: "lusi10",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 129,
              imageUrl: "lusi1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 129,
              imageUrl: "lusi7",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 100,
              imageUrl: "lusi9",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 100,
              imageUrl: "lusi0",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 78,
              imageUrl: "lusi8",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 67,
              imageUrl: "lusi12",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 67,
              imageUrl: "lusi3",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0])

    ]
}
