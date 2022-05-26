//
//  File.swift
//  
//
//  Created by Juan vasquez on 16-05-22.
//

import Combine

public final class RecomendationRowViewModel: ObservableObject {
    @Published var text = ""
    
    init(text: String) {
        self.text = text
    }
}
