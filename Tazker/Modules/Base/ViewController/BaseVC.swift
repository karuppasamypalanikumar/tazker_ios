//
//  BaseViewController.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class BaseVC: UIViewController {

    var baseView: BaseView? {
        get { return self.view as? BaseView }
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
    func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.baseView?.didAppear()
    }
    override
    func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.baseView?.didDisappear()
    }
    override
    func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.baseView?.willDisappear()
    }
    
    override
    func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.baseView?.didLayoutSubViews()
    }
    
    override
    func traitCollectionDidChange(
        _ previousTraitCollection: UITraitCollection?
    ) {
        super.traitCollectionDidChange(
            previousTraitCollection
        )
        self.baseView?.colorChangeDetected()
    }
}
