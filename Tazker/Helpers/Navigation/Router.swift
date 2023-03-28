//
//  Router.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

enum Router: String {
    case SplashVC
    case WelcomeVC
    case LoginVC
    case RegisterVC
    func instance(
        story: StoryBoard
    ) -> BaseVC {
        return story.instance.instantiateViewController(
            withIdentifier: self.rawValue
        ) as! BaseVC
    }
}

enum StoryBoard: String {
    case Welcome
    case Splash
    case Login
    case Register
    var instance: UIStoryboard {
        return UIStoryboard(
            name: self.rawValue,
            bundle: nil
        )
    }
}
