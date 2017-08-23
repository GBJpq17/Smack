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
    }

}
