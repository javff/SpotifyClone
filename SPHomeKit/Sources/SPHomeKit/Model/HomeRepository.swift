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
            .init(identifier: BaseGridSectionIdentifier(id: "1", type: "recommendations"), data: RecomendationsModel(results: [.init(title: "hola")])),
            .init(identifier: BaseGridSectionIdentifier(id: "2", type: "recommendations"), data: RecomendationsModel(results: [.init(title: "hola")])),
            .init(identifier: BaseGridSectionIdentifier(id: "3", type: "recommendations"), data: RecomendationsModel(results: [.init(title: "hola")])),
            .init(identifier: BaseGridSectionIdentifier(id: "4", type: "recommendations"), data: RecomendationsModel(results: [.init(title: "hola")]))
        ]
    }

    public init() {}
}
