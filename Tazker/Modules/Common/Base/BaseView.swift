//
//  BaseView.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class BaseView: UIView {
    private var baseVC: BaseVC?
    func didLoad(vc: BaseVC) { self.baseVC = vc }
    func didAppear() { }
    func willAppear() { }
    func didDisAppear() { }
    func willDisAppear() { }
    func willLayout() { }
    func didLayout() { }
    func loadView() { }
    func darkModeUpdate() { } 
}
