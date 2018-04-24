//
//  ChatTableViewCell.swift
//  NNU-iOS-workshop
//
//  Created by Qays Dwekat on 4/23/18.
//  Copyright © 2018 Qays Dwekat. All rights reserved.
//

import Foundation
import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var chatImage: UIImageView!

    @IBOutlet weak var senderNameLV: UILabel!

    @IBOutlet weak var messageLV: UILabel!

    var chatModel:ChatModel?

    func initializeView() {

        if let chatModel = chatModel {

            self.senderNameLV.text = chatModel.senderName
            
            self.messageLV.text = chatModel.message
        }
    }
}
