//
//  Colors.swift
//  Tazker
//
//  Created by Mr.K on 28/03/23.
//

import UIKit

enum Colors {
    case primaryColor
    case secondaryColor
    var bg: UIColor {
        switch self {
        case .primaryColor:
            return UIColor(red: 0.4, green: 0.196, blue: 0.658, alpha: 1)
        case .secondaryColor:
            return UIColor(red: 0.658, green: 0.196, blue: 0.572, alpha: 1)
        }
    }
    var onText: UIColor {
        switch self {
        case .primaryColor:
            return UIColor.white
        case .secondaryColor:
            return UIColor.black
        }
    }
}
