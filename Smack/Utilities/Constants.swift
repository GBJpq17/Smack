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

//URL Constants
let BASE_URL = "https://smackioschat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)account/add"

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
