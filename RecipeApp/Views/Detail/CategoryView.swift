//
//  CategoryView.swift
//  RecipeApp
//
//  Created by Jonathan Tri Christianto on 12/06/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    // computed property
    var recipes: [Recipe] {
        return Recipe.all.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.salad)
    }
}
