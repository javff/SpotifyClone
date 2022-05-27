//
//  SwiftUIView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI
import SPHomeKit

struct RecomendationRowView: View {

    @StateObject var viewModel: RecomendationRowViewModel

    var body: some View {
        HStack {
            VStack {

            }
            .frame(width: 62, height: 62)
            .background(Color.red)
            Text(viewModel.text)
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color(hex: "323232"))
        .cornerRadius(4.25)
    }
}

struct RecomendationRowView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationRowView(viewModel: .init(text: "Lorem it sum"))
            .padding()
    }
}
