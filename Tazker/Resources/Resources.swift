//
//  Resources.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation

public
class Resources {
    
    public
    enum Images: String {
        case username
        case password
        case hidePassword = "hide_password"
        case showPassword = "show_password"
    }
    
    public
    enum Gif: String {
        case welcomeLogoOne = "welcome_logo_1"
        case welcomeLogoTwo = "welcome_logo_2"
    }
    
    private
    init() {}
    
    public static
    let shared = Resources()
    
}
