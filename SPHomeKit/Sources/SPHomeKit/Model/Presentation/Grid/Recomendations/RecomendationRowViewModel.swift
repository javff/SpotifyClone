//
//  File.swift
//  
//
//  Created by Juan vasquez on 16-05-22.
//

import Combine

public final class RecomendationRowViewModel: ObservableObject {

    @Published public var text = ""
    
    public init(text: String) {
        self.text = text
    }
}

extension RecomendationRowViewModel : Equatable, Hashable {
    public static func == (lhs: RecomendationRowViewModel, rhs: RecomendationRowViewModel) -> Bool {
        return lhs === rhs
    }

    public func hash(into hasher: inout Hasher) {
       var hashValue: Int {
           var hasher = Hasher()
           self.hash(into: &hasher)
           return hasher.finalize()
       }
    }
 }
