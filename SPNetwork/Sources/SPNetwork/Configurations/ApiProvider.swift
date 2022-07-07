//
//  ApiProvider.swift
//  
//
//  Created by Juan vasquez on 07-07-22.
//

import JKNetwork

public struct ApiProvider: ProviderConfiguration {

    var version: ApiVersion {
        return .v1
    }

    var baseURL: URL {
        guard let url = URL(string: "https://api.spotify.com/\(version.rawValue)") else {
            fatalError("Verify base URL")
        }
    }

    public var baseHeaders: [String : String] {
        ["Authorization": "Bearer BQCaJ-uJg5JyT-XVXh1X0q7POQRhEwzoFvNdtZCX-lpdRt586kVEpHFWnq0ObDtfaqnlm56hGQmgd43hd9lN2FIv0nDfuczoLc8d1HuTC71Ox6gxRFw"]
    }
}
