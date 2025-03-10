//
//  UserService.swift
//  InstagramTutorial
//
//  Created by Shimin Cheng on 2025-02-16.
//

import Foundation
import Firebase

struct UserService{
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    @MainActor
    static func fetchAllUsers() async throws -> [User] {
        
        //var users = [User]()
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        //let documents = snapshot.documents
        
//        for doc in documents {
//            guard let user = try?doc.data(as:User.self) else {return users}
//            users.append(user)
//        }

        //return users
        
        return snapshot.documents.compactMap({try? $0.data(as: User.self)})
    }
}

