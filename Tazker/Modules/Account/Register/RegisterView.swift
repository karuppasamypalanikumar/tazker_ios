//
//  RegisterView.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class RegisterView: BaseView {

    private
    var vc : RegisterVC!
    
    override
    func didLoad(vc: BaseVC) {
        super.didLoad(vc: vc)
        self.vc = vc as? RegisterVC
    }
}
