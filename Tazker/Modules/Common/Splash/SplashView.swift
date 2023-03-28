//
//  SplashView.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class SplashView: BaseView {
    private
    var vc: SplashVC!
    
    override
    func didLoad(vc: BaseVC) {
        self.vc = vc as? SplashVC
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.vc.moveToWelcome()
        }
    }
}
