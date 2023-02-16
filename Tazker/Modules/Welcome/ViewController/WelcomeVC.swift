//
//  WelcomeVC.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class WelcomeVC: BaseVC {

    var welcomeVM: WelcomeVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.welcomeVM = WelcomeVM()
    }
    
    func moveAfterCheck() {
        self.welcomeVM.checkSignIn { (status) in
            if status {
                self.moveToHome()
            } else {
                self.moveToSignin()
            }
        }
    }
    
    func moveToSignin() {
        let signInVC: SigninVC = NavigationHandler.shared.initVC(
            .Signin,
            .SigninVC
        )
        signInVC.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async {
            self.present(
                signInVC,
                animated: true) {
                self.baseView?.prepareEnd()
                LogHandler.shared.log(
                    msg: "User Entered The Signin VC"
                )
            }
        }
    }
    
    func moveToHome() {
        let homeVC: HomeVC = NavigationHandler.shared.initVC(
            .Home,
            .HomeVC
        )
        homeVC.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async {
            self.present(
                homeVC,
                animated: true) {
                self.baseView?.prepareEnd()
                LogHandler.shared.log(
                    msg: "User Login in to Home VC"
                )
            }
        }
    }
    
}
