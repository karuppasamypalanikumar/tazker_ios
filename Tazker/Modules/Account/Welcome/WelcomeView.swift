//
//  WelcomeView.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class WelcomeView: BaseView {

    private
    var vc: WelcomeVC!

    @IBOutlet private weak
    var nextButton: UIButton!
    
    override
    func didLoad(vc: BaseVC) {
        super.didLoad(vc: vc)
        self.vc = vc as? WelcomeVC
        self.initViews()
        self.initNextButton()
    }

    override
    func loadView() {
        super.loadView()
        self.initLayers()
    }
}

extension WelcomeView {
    
    func initViews() {
        
    }
    
    func initLayers() {
        self.nextButton.layer.cornerRadius = 10
    }
    
    func initNextButton() {
        self.nextButton.setTitle(
            "Next",
            for: .normal
        )
        self.nextButton.setTitleColor(
            Colors.primaryColor.onText,
            for: .normal
        )
        self.nextButton.backgroundColor = Colors.primaryColor.bg
    }
}

extension WelcomeView {
        
    @IBAction private
    func nextButtonClicked(
        _ sender: UIButton
    ) {
        self.vc.moveToLogin()
    }
}
