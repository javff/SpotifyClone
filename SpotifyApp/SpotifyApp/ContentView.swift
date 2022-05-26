//
//  ContentView.swift
//  SpotifyApp
//
//  Created by Juan vasquez on 13-05-22.
//

import SwiftUI
import HomeUI
import SPHomeKit

struct ContentView: View {
    var body: some View {
        HomeView(gridFactory: FakeGridFactoryImpl(), viewModel: HomeViewModel(repository: FakeHomeRepository()))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
