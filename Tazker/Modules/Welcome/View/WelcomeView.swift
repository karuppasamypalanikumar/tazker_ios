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
        if let images = GifHandler.shared.getImages(
            from: Resources.Gif.welcomeLogoOne.rawValue
        ) {
            DispatchQueue.main.async {
                self.logoImageView.animationImages = images
                self.logoImageView.startAnimating()
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 2) {
                    self.vc.moveAfterCheck()
                }
            }
        }
    }
    
    override
    func prepareEnd() {
        super.prepareEnd()
        self.logoImageView.stopAnimating()
        self.logoImageView.animationImages = nil
        self.logoImageView.image = nil
        self.logoImageView.removeFromSuperview()
    }
}
