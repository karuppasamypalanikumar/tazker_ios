//
//  SignInManager.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation

public
class SignInManager {
    
    private
    init() { }
    
    public static
    let shared = SignInManager()
    
    var isLogin: Bool {
        get {
            return false
        }
        set {
            
        }
    }
}
