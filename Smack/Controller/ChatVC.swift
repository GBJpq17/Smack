//
//  ChatVC.swift
//  Smack
//
//  Created by RyLo on 8/11/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var channelNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //clicking the menuBtn will perform the revealViewController feature and more the chatVC to the
        //right side of the screen
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        //this feature allows the user to move the chatVC back and forth by sliding
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //this feature allows the user to revert the chatVC to its normal position bu tapping the chatVC
        //screen
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        NotificationCenter.default.addObserver(self, selector: #selector(ChatVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ChatVC.channelSelected(_:)), name: NOTIF_CHANNELS_SELECTED, object: nil)
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(completion: { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            })
        }
    }
    
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            onLoginGetMessages()
        } else {
            channelNameLabel.text = "Please Log In"
        }
    }
    
    func onLoginGetMessages() {
        MessageService.instance.findAllChannel { (success) in
            if success {
                if MessageService.instance.channels.count > 0 {
                    MessageService.instance.selectedChannel = MessageService.instance.channels[0]
                    self.updateWithChannel()
                } else {
                    self.channelNameLabel.text = "No channels yet!"
                }
            }
        }
    }
    
    @objc func channelSelected(_ notif: Notification) {
        updateWithChannel()
    }
    
    func updateWithChannel() {
        let channelName = MessageService.instance.selectedChannel?.channelTitle ?? ""
        channelNameLabel.text = "#\(channelName)"
        getMessages()
    }
    
    func getMessages() {
        guard let channelId = MessageService.instance.selectedChannel?.id else {return}
        MessageService.instance.findAllMessagesForChannel(channelID: channelId) { (success) in
            //
        }
    }
}
