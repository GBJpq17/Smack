//
//  Constants.swift
//  Smack
//
//  Created by RyLo on 8/11/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import Foundation

//Alias
//CompletionHandler is of type (_ Success: Bool)
//This is a very simple closure type
typealias CompletionHandler = (_ Success: Bool) -> ()

//Color
let smackPurplePlaceholder = #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 0.5)

//Notification Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

//URL Constants
let BASE_URL = "https://smackioschat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Header
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
