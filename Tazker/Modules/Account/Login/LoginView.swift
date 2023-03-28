//
//  LoginView.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class LoginView: BaseView {
    
    private
    var vc: LoginVC!
    
    override
    func didLoad(vc: BaseVC) {
        super.didLoad(vc: vc)
        self.vc = vc as? LoginVC
    }
    
}
