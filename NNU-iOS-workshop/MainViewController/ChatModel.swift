//
//  ChatModel.swift
//  NNU-iOS-workshop
//
//  Created by Qays Dwekat on 4/23/18.
//  Copyright © 2018 Qays Dwekat. All rights reserved.
//

import Foundation

class ChatModel {

    var senderName:String?

    var message:String?

    var imageUrl:String?

    init(senderName:String, message:String, imageUrl:String?) {

        self.senderName = senderName
        self.message = message
        self.imageUrl = imageUrl
    }

    init() {

    }
}
