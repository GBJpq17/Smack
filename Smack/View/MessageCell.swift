//
//  MessageCell.swift
//  Smack
//
//  Created by RyLo on 8/27/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var userImage: CircleImage!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    
    @IBOutlet weak var messageBodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(message: Message) {
        messageBodyLabel.text = message.message
        userNameLabel.text = message.userName
        userImage.image = UIImage(named: message.userAvatar)
        userImage.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
    }
}
