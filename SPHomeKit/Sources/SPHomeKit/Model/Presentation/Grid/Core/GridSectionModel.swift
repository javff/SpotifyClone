//
//  GridModel.swift
//  
//
//  Created by Juan vasquez on 26-05-22.
//

import Foundation

/// Represents the Payload Data Model of a Section
public protocol GridSectionModel {

}

public protocol BaseSectionIdentifierProtocol {
    var id: String { get }
    var type: String { get }
}

/// The identifier of a SectionController
public struct BaseGridSectionIdentifier: BaseSectionIdentifierProtocol {

    /// String that represent id of the section
    public let id: String

    /// String that represent type of the section
    public let type: String


    /// Init of BaseSectionIdentifier
    /// - Parameters:
    ///   - id: String that represent id of the section
    ///   - type: String that represent type of the section
    public init(id: String, type: String) {
        self.id = id
        self.type = type
    }
}

public protocol BaseGridSectionDataProtocol {
    var identifier: BaseSectionIdentifierProtocol { get }
    var data: GridSectionModel { get }
}

/// The model that represent a SectionController
public struct BaseGridSectionData: BaseGridSectionDataProtocol {
    public let identifier: BaseSectionIdentifierProtocol
    public let data: GridSectionModel

    /// Init of BaseSectionData
    /// - Parameters:
    ///   - identifier: A identifier object
    ///   - data: A diffableModel object
    public init(identifier: BaseSectionIdentifierProtocol, data: GridSectionModel) {
        self.identifier = identifier
        self.data = data
    }
}
