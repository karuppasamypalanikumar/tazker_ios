//
//  WelcomeVC.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class WelcomeVC: BaseVC {

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

extension WelcomeVC {
    
    func hideNavigation() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func moveToLogin() {
        let vc = Router.LoginVC.instance(story: .Login)
        self.navigationController?.pushViewController(
            vc,
            animated: true
        )
    }
    
}
