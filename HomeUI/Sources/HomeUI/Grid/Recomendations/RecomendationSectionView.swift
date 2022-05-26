//
//  SwiftUIView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI
import SPHomeKit

struct RecomendationSectionView: View {

    var viewModel = RecomendationSectionViewModel()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Good Evening")
                .foregroundColor(.white)
                .bold()
            ForEach(0..<3) {_ in
                HStack(spacing: 5) {
                    RecomendationRowView()
                    RecomendationRowView()
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct RecomendationSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationSectionView()
            .background(Color.black)
    }
}
