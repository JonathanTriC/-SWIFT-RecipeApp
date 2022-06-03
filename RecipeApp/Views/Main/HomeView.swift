//
//  HomeView.swift
//  RecipeApp
//
//  Created by Jonathan Tri Christianto on 03/06/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("My Recipe")
                .navigationTitle("My Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
