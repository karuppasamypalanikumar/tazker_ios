//
//  LoginVC.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class LoginVC: BaseVC {

    override
    func viewDidLoad() {
        super.viewDidLoad()
    }

    override
    func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.hideNavigation()
    }
    
}

extension LoginVC {
    func hideNavigation() {
        self.navigationController?.navigationBar.isHidden = true
    }
}
