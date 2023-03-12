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
    let height: CGFloat
    let width: CGFloat
    let viewModel: WelcomeViewModel
    @Binding var selected: Int
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            HStack(alignment: .center) {
                Image(
                    systemName: imgString
                )
                .renderingMode(.original)
                .resizable()
                .frame(
                    width: width,
                    height: height
                )
            }
            Text(
                title
            )
            .font(.title)
            .fontWeight(.bold)
            Text(
                description
            )
            .font(.subheadline)
            .fontWeight(.medium)
            Spacer()
            if isLastPage {
                Button {
                    self.moveToLast()
                } label: {
                    ZStack {
                        Capsule(
                            style: .continuous
                        )
                        .fill()
                        .frame(
                            width: 100,
                            height: 50
                        )
                        .foregroundColor(
                            Colors.PrimaryColor
                        )
                        Text("Continue")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(10)
                    }
                }
                .padding(.bottom,30)
            } else {
                Button {
                    
                } label: {
                    ZStack {
                        Capsule(
                            style: .continuous
                        )
                        .fill()
                        .frame(
                            width: 100,
                            height: 50
                        )
                        .foregroundColor(
                            Colors.ErrorColor
                        )
                        Text("Skip")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(10)
                    }
                }
                .padding(.bottom,30)
            }
        }
        .padding(20)
        
    }
    func moveToLast() {
        self.selected = 4
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
            isLastPage: false,
            height: 80,
            width: 100,
            viewModel: WelcomeViewModel(),
            selected: .constant(0)
        )
    }
}
