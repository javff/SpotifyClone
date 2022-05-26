//
//  File.swift
//  
//
//  Created by Juan vasquez on 16-05-22.
//

import Combine
import Foundation

public struct RecomendationModel {
    public let title: String

    public init(title: String) {
        self.title = title
    }
}

public struct RecomendationsModel: GridSectionModel {
    public let results: [RecomendationModel]

    public init(results: [RecomendationModel]) {
        self.results = results
    }
}

public final class RecomendationSectionViewModel: ObservableObject {

    @Published public var recomendations: [RecomendationRowViewModel] = []

    public init(model: RecomendationsModel) {
        recomendations = model.results.map { RecomendationRowViewModel(text: $0.title) }
    }
}
