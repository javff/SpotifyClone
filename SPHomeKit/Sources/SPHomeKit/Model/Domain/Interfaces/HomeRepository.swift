//
//  File.swift
//  
//
//  Created by Juan vasquez on 26-05-22.
//

import Foundation

public protocol HomeRepository {
    func fetchHomeGrid() async throws -> [BaseGridSectionData]
}

public final class FakeHomeRepository: HomeRepository {
    public func fetchHomeGrid() async throws -> [BaseGridSectionData] {
        [
            .init(identifier: BaseGridSectionIdentifier(id: "1", type: "recommendations"),
                  data: RecomendationsModel(results: [
                    .init(title: "Lorem it sum"),
                    .init(title: "Sunshine song 2"),
                    .init(title: "Love and tunder song 1"),
                    .init(title: "Galaxy volume nr 1")

                  ])
                 )
        ]
    }

    public init() {}
}
