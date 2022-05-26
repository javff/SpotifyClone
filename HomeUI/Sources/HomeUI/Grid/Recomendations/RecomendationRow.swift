//
//  SwiftUIView.swift
//  
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI

struct RecomendationRowView: View {
    var body: some View {
        HStack {
            VStack {

            }
            .frame(maxWidth: 62, maxHeight: 62)
            .background(Color.red)
            Text("Lorem")
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.4))
    }
}

struct RecomendationRowView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationRowView()
    }
}
