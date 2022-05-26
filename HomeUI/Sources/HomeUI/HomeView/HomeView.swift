//
//  HomeView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI

public struct HomeView: View {
    public var body: some View {
        VStack {
            RecomendationSectionView()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                                 Color(hex: "3A9BBC"),
                                 .black,
                                 .black,
                                 .black
                              ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
    }

    public init() {}

}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
