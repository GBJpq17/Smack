//
//  ChannelVC.swift
//  Smack
//
//  Created by RyLo on 8/11/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //how far the revealViewController is from the right side when it slides over
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
