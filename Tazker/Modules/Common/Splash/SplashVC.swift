//
//  SplashVC.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class SplashVC: BaseVC {

    override
    func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SplashVC {
    func moveToWelcome() {
        let vc = Router.WelcomeVC.instance(story: .Welcome)
        self.navigationController?.pushViewController(
            vc,
            animated: true
        )
    }
    func moveToHome() {
        
    }
}
