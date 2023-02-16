//
//  WelcomeView.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class WelcomeView: BaseView {

    private
    var vc: WelcomeVC!
    
    @IBOutlet weak
    var logoImageView: UIImageView!
    
    @IBOutlet weak
    var appNameLabel: UILabel!

    override
    func didLoad(vc: BaseVC) {
        super.didLoad(vc: vc)
        self.vc = vc as? WelcomeVC
        self.initDetails()
    }
    
    func initDetails() {
        if let images = GifHandler.shared.getImages(from: "welcome_logo_1") {
            DispatchQueue.main.async {
                self.logoImageView.animationImages = images
                self.logoImageView.startAnimating()
            }
        }
    }
}
