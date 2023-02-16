//
//  SigninView.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class SigninView: BaseView {

    var vc: SigninVC!
    
    
    @IBOutlet weak
    var usernameTF: UITextField!
    
    @IBOutlet weak
    var passwordTF: UITextField!
    
    @IBOutlet weak
    var signinBtn: UIButton!
    
    @IBOutlet weak
    var signupBtn: UIButton!
    
    @IBOutlet weak
    var skipBtn: UIButton!
    
    
    override
    func didLoad(vc: BaseVC) {
        super.didLoad(vc: vc)
        self.vc = vc as? SigninVC
        self.initDesign()
        self.initGuesture()
    }
    
    override
    func colorChangeDetected() {
        super.colorChangeDetected()
        self.initDesign()
    }
}

extension SigninView {
    
    func initDesign() {
        self.usernameTF.border(
            width: 1,
            color: .label
        )
        self.passwordTF.border(
            width: 1,
            color: .label
        )
        self.usernameTF.corner(
            radius: 8
        )
        self.passwordTF.corner(
            radius: 8
        )
        self.usernameTF.setView(
            image: .username,
            side: .left
        )
        self.passwordTF.setView(
            image: .password,
            side: .left
        )
    }
    
    func initGuesture() {
        self.passwordTF.isSecureTextEntry = true
        self.passwordTF.setView(
            image: .showPassword,
            side: .right,
            target: self,
            action: #selector(passwordShow(_:)))
    }
    
    @objc
    func passwordShow(_ action: UITapGestureRecognizer) {
        self.passwordTF.changeHiddenImage()
    }
}

extension SigninView {
    
    @IBAction
    func singinBtnClicked(
        _ sender: UIButton
    ) {
        
    }
    
    @IBAction
    func signupBtnClicked(
        _ sender: UIButton
    ) {
        
    }
    
    @IBAction
    func skipBtnClicked(
        _ sender: UIButton
    ) {
        
    }
    
}
