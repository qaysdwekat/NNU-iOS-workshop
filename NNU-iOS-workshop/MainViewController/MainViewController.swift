//
//  MainViewController.swift
//  NNU-iOS-workshop
//
//  Created by Qays Dwekat on 4/20/18.
//  Copyright © 2018 Qays Dwekat. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?

    @IBOutlet weak var textField: UITextField?

    var models:[ChatModel] = []

    @IBAction func sendAction(_ sender: Any) {

        if let text = textField?.text, !text.isEmpty {

            let model = ChatModel(senderName: "Qays Dwekat", message: text, imageUrl: "https://coronalabs.com/wordpress/wp-content/uploads/2014/06/apple.jpg")

            models.append(model)

            let indexPath = IndexPath(row: (models.count - 1), section: 0)

            self.tableView?.insertRows(at: [indexPath], with: .automatic)

            self.tableView?.scrollToRow(at: indexPath, at: .top, animated: true)

            textField?.text = nil
        }
    }
}

extension MainViewController: UITableViewDelegate {


}

extension MainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "chatTableViewCell") as! ChatTableViewCell

        cell.chatModel = models[indexPath.row]

        cell.initializeView()

        return cell
    }
}
