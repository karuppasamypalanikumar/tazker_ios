//
//  NavigationHandler.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation
import UIKit

class NavigationHandler {
    
    private
    init() { }
    
    public static
    let shared = NavigationHandler()
    
    public
    func initVC<T:BaseVC>(
        _ storyBoard: StoryBoardList,
        _ viewController: ViewControllerList
    ) -> T {
        let story = UIStoryboard(
            name: storyBoard.rawValue,
            bundle: nil
        )
        return story.instantiateViewController(
            identifier: viewController.rawValue
        ) as T
    }
}

enum StoryBoardList: String {
    case Welcome
    case Signup
    case Signin
    case Home
}

enum ViewControllerList: String {
    case WelcomeVC
    case SignupVC
    case SigninVC
    case HomeVC
}
