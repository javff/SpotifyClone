//
//  File.swift
//  
//
//  Created by Juan vasquez on 26-05-22.
//

import Foundation
import SPHomeKit
import SwiftUI

public protocol GridFactory: AnyObject {
    func makeSection(_ section: BaseGridSectionData) -> AnyView?
}

public final class FakeGridFactoryImpl: GridFactory {

    private let types: [String: GridRepresentable.Type] = [
        "recommendations": RecomendationGridRepresentable.self
    ]

    public func makeSection(_ section: BaseGridSectionData) -> AnyView? {
        let Type = types[section.identifier.type]
        let view = Type?.init().makeView(model: section.data)
        return view
    }

    public init() {}
}

