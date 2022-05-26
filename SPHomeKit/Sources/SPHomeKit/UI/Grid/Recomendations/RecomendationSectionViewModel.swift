//
//  File.swift
//  
//
//  Created by Juan vasquez on 16-05-22.
//

import Combine

public final class RecomendationSectionViewModel: ObservableObject {
    @Published public var recomendations: [RecomendationRowViewModel] = [
        RecomendationRowViewModel(text: "Canción 1"),
        RecomendationRowViewModel(text: "Canción 2"),
        RecomendationRowViewModel(text: "Canción 3"),
        RecomendationRowViewModel(text: "Canción 4"),
        RecomendationRowViewModel(text: "Canción 5"),
        RecomendationRowViewModel(text: "Canción 6")
    ]

    public init() {
        
    }
}
