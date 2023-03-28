//
//  BaseVC.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

class BaseVC: UIViewController {
    
    private
    var baseView: BaseView? {
        return self.view as? BaseView
    }
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        self.baseView?.didLoad(vc: self)
    }
    
    override
    func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.baseView?.willAppear()
    }
    
    override
    func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.baseView?.willDisAppear()
    }
    
    override
    func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.baseView?.didAppear()
    }
    
    override
    func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.baseView?.didDisAppear()
    }
    
    override
    func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.baseView?.willLayout()
    }
    
    override
    func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.baseView?.didLayout()
    }
    
    override
    func loadView() {
        super.loadView()
        self.baseView?.loadView()
    }
    
    override
    func traitCollectionDidChange(
        _ previousTraitCollection: UITraitCollection?
    ) {
        super.traitCollectionDidChange(previousTraitCollection)
        self.baseView?.darkModeUpdate()
    }
}

