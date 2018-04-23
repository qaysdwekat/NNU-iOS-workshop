//
//  FirebaseManager.swift
//  NNU-iOS-workshop
//
//  Created by Qays Dwekat on 4/23/18.
//  Copyright © 2018 Qays Dwekat. All rights reserved.
//
import Foundation
import Firebase
import ObjectMapper

protocol ChatDelegate {

    func didAddValue(model: ChatModel)
}

class FirebaseManager: NSObject {

    var ref : DatabaseReference?

    static var sharedInstance = FirebaseManager()

    override init () {

        super.init()

        // initialize Firebase reference
        if ref == nil {

            // START create_database_reference
            self.ref = Database.database().reference(fromURL: "https://yamsafer-workshop-2018-chat.firebaseio.com/")
        }
    }

    func observeMessages(deleget: ChatDelegate) {

        ref?.child("messages").observe(.childAdded, with: { snapshot in

            if let value = snapshot.value {

//                if let arrValue = value as? [String : Any], !(value is NSNull), let model = Mapper<ChatModel>().map(JSON: arrValue) {
//
//                    deleget.didAddValue(model: model)
//                }
            }
        }, withCancel: { (error) in

        })
    }

    func addMessage(model: ChatModel) {

//        self.ref?.child("messages").childByAutoId().setValue(model.toJSON())
    }
}
