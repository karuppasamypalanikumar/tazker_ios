//
//  SigninVC.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class SigninVC: BaseVC {

    var signinVM: SigninVM!
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        self.signinVM = SigninVM()
    }

}
