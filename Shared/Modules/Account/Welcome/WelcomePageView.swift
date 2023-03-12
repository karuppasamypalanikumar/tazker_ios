//
//  WelcomePageView.swift
//  Tazker (iOS)
//
//  Created by Karuppasamy Personal on 12/03/23.
//

import SwiftUI

struct WelcomePageView: View {
    let imgString: String
    let title: String
    let description: String
    let isLastPage: Bool
    var body: some View {
        VStack(spacing: 20) {
            Image(
                systemName: imgString
            )
            .resizable()
            .frame(
                width: 100,
                height: 100
            )
            .foregroundColor(Colors.PrimaryColor)
            Text(
                title
            )
            .font(.title)
            .fontWeight(.bold)
            Text(
                description
            )
            .font(.subheadline)
            .fontWeight(.light)
            if isLastPage {
                Button {
                    
                } label: {
                    Text("Continue")
                }
            } else {
                Button {
                    
                } label: {
                    Text("Skip")
                }
            }
        }
        .padding(20)
    }
    func moveToLogin() {
        
    }
}

struct WelcomePageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView(
            imgString: "note.text.badge.plus",
            title: "Create Task",
            description: "Can Create Thousands of Tasks and Assign To Subordinates. can assigns your self",
            isLastPage: true
        )
    }
}
