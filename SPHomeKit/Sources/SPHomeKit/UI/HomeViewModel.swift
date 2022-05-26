//
//  File.swift
//  
//
//  Created by Juan vasquez on 26-05-22.
//

import Foundation

@MainActor
public final class HomeViewModel: ObservableObject {

    private let respository: HomeRepository
    @Published public var sections: [BaseGridSectionData] = []
    @Published public var isLoading: Bool = false

    public init(repository: HomeRepository) {
        self.respository = repository
    }

    public func fetchGrid() {
        Task {
            do {
                isLoading = true
                sections = try await respository.fetchHomeGrid()
            } catch {

            }
            isLoading = false
        }
    }
}
