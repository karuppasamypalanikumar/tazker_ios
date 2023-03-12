//
//  WelcomeView.swift
//  Tazker (iOS)
//
//  Created by Karuppasamy Personal on 12/03/23.
//

import SwiftUI

struct WelcomeView: View {
    let viewModel = WelcomeViewModel()
    @State var selection: Int
    var body: some View {
        TabView(selection: $selection) {
            ForEach(
                self.viewModel.pages,
                id: \.id
            ) { page in
                WelcomePageView(
                    imgString: page.icon,
                    title: page.title,
                    description: page.description,
                    isLastPage: page.isLast,
                    height: page.height,
                    width: page.width,
                    viewModel: viewModel,
                    selected: $selection
                ).tag(page.id)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selection: 0)
    }
}
