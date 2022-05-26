//
//  SwiftUIView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI
import SPHomeKit

struct RecomendationSectionView: View {

    @StateObject var viewModel: RecomendationSectionViewModel
    var gridItemLayout = [GridItem(.flexible(maximum: .infinity)), GridItem(.flexible())]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Good Evening")
                .foregroundColor(.white)
                .bold()
            LazyVGrid(columns: gridItemLayout) {
                ForEach(viewModel.recomendations, id: \.self) { viewModel in
                    RecomendationRowView(viewModel: viewModel)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct RecomendationSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationSectionView(
            viewModel: RecomendationSectionViewModel(
                model: RecomendationsModel(
                    results: [.init(title: "hola"),
                              .init(title: "hola2"),
                              .init(title: "hola3"),
                              .init(title: "hola4"),
                              .init(title: "hola5"),
                              .init(title: "hola6"),
                              .init(title: "hola7")
                            ]
                )
            )
        )
            .background(Color.black)
    }
}
