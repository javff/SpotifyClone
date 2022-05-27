//
//  HomeView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI
import SPHomeKit

public struct HomeView: View {

    private let gridFactory: GridFactory
    @StateObject var viewModel: HomeViewModel

    public var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.sections, id: \.identifier.id) {
                    gridFactory.makeSection($0)
                }
                Spacer()
            }
        }.task {
            viewModel.fetchGrid()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(gradientView())
    }

    public init(gridFactory: GridFactory, viewModel: HomeViewModel) {
        self.gridFactory = gridFactory
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    fileprivate func gradientView() -> LinearGradient {
        return LinearGradient(
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
    }
}

struct SwiftUIView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView(gridFactory: FakeGridFactoryImpl(), viewModel: HomeViewModel(repository: FakeHomeRepository()))
    }
}
