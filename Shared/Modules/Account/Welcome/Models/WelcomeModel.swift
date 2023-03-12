//
//  WelcomeModel.swift
//  Tazker (iOS)
//
//  Created by Karuppasamy Personal on 12/03/23.
//

import Foundation

class WelcomeModel {
    let id: Int
    let icon: String
    let title: String
    let description: String
    let isLast: Bool
    let height: CGFloat
    let width: CGFloat
    
    init(
        icon: String,
        title: String,
        description: String,
        isLast: Bool = false,
        height: CGFloat,
        width: CGFloat,
        id: Int
    ) {
        self.id = id
        self.icon = icon
        self.title = title
        self.description = description
        self.isLast = isLast
        self.height = height
        self.width = width
    }
}
