//
//  WelcomeVM.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class WelcomeVM: BaseVM {
    
    typealias SignInStatusCompletion = (_ status: Bool) -> Void
    
    func checkSignIn(
        status: @escaping SignInStatusCompletion
    ) {
        status(SignInManager.shared.isLogin)
    }
    
}
