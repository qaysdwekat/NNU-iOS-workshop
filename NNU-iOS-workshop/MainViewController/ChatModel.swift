//
//  ChatModel.swift
//  NNU-iOS-workshop
//
//  Created by Qays Dwekat on 4/23/18.
//  Copyright © 2018 Qays Dwekat. All rights reserved.
//

import Foundation
import ObjectMapper

class ChatModel: Mappable {

    var imageURL: String?

    var senderName:String?

    var message:String?

    init(senderName:String, message:String) {

        self.senderName = senderName
        self.message = message
        self.imageURL = "https://coronalabs.com/wordpress/wp-content/uploads/2014/06/apple.jpg"
    }

    init() {

    }

    required init?(map: Map) {

    }

    func mapping(map: Map) {

        imageURL            <- map["photoUrl"]
        senderName          <- map["messagesSender"]
        message             <- map["text"]
    }
}