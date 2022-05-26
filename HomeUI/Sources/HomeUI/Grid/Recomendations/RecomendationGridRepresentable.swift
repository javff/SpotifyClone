//
//  File.swift
//  
//
//  Created by Juan vasquez on 26-05-22.
//

import SwiftUI
import SPHomeKit
protocol GridRepresentable {
    func makeView(model: GridSectionModel) -> AnyView

    init()
}

class BaseGridRepresentable<T: GridSectionModel>: GridRepresentable {
    final func makeView(model: GridSectionModel) -> AnyView {
        guard let model = model as? T else {
            fatalError("Verify your model")
        }
        let view = makeView(model: model)
        return view
    }

    func makeView(model: T) -> AnyView {
        fatalError("only override")
    }



    required init() {}
}

final class RecomendationGridRepresentable: BaseGridRepresentable<RecomendationsModel> {
    override func makeView(model: RecomendationsModel) -> AnyView {
        let viewModel = RecomendationSectionViewModel(model: model)
        return AnyView(RecomendationSectionView(viewModel: viewModel))
    }
}
