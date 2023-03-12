//
//  WelcomeViewModel.swift
//  Tazker (iOS)
//
//  Created by Karuppasamy Personal on 12/03/23.
//

import Foundation

class WelcomeViewModel {
    
    public
    var pages : [WelcomeModel] = []
    
    init() {
        self.pages = self.fetchPageDetails()
    }
    
    private
    func fetchPageDetails() -> [WelcomeModel] {
        return [
            WelcomeModel(
                icon: "note.text.badge.plus",
                title: "Create Task",
                description: "Can Create Thousands of Tasks and Assign To Subordinates. can assigns your self",
                height: 80,
                width: 100,
                id: 1
            ),
            WelcomeModel(
                icon: "list.bullet.clipboard.fill",
                title: "Manage Tasks",
                description: "Easily Manage All the Tasks based on their Category/Project",
                height: 100,
                width: 60,
                id: 2
            ),
            WelcomeModel(
                icon: "person.3.fill",
                title: "Assign",
                description: "Can Assign the Task to your subordinates and get it done",
                height: 70,
                width: 130,
                id: 3
            ),
            WelcomeModel(
                icon: "checkmark.icloud.fill",
                title: "Save and Accessable",
                description: "Every Task is Managed in Cloud you can Login and Get your task in any device",
                isLast: true,
                height: 80,
                width: 100,
                id: 4
            )
        ]
    }
    
}
