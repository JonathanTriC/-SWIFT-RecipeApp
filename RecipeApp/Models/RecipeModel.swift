//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Jonathan Tri Christianto on 03/06/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Creamy Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-670x470-c.jpg",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
            ingredients: "¼ cup cashews\n1 medium onion, cut into ½-inch dice (2 cups)\n1½ pounds carrots, cut into ½-inch dice (3½ cups)\n1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n1 sprig fresh rosemary\n1 sprig fresh thyme\n1 large fresh sage leaf\n4 cloves garlic, minced\n1 tablespoon lemon juice\nSea salt and freshly ground black pepper or cayenne pepper, to taste\n½ cup fresh pomegranate seeds\n2 tablespoons finely chopped fresh parsley",
            direction: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\nIn a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\nRemove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\nTransfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\nTo serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "Soup",
            datePublished: "2019-11-11",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        ),
        Recipe(
            name: "Kale, Apple, and Quinoa Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-wordpress-670x470-c.jpg",
            description: "Each bite of this colorful salad is filled with the flavors of favorite fall ingredients such as apples, butternut squash, and pumpkin seeds. For optimum freshness and texture, wait to add the dressing until just before serving.\nNote that this recipe calls for cooked quinoa, so have that ready to go: For 1½ cups cooked quinoa, rinse and drain ½ cup quinoa; cook according to package directions; and drain if needed. Check out our Grains Cooking Guide for more tips on prepping grains like a pro.",
            ingredients: "2 cups ¾-inch pieces peeled butternut squash\n¼ cup pumpkin seeds\n¼ teaspoon ground cinnamon\n1 lemon\n2 tablespoons pure maple syrup\n1 tablespoon Dijon mustard\n3 cups stemmed and chopped kale\n1½ cups cooked quinoa\n1 cup chopped apple\n½ cup sliced green onions\nSea salt and freshly ground black pepper, to taste",
            direction: "Preheat oven to 400°F. Line a 15×10-inch baking pan with parchment paper or a silicone baking mat. Arrange squash in the prepared baking pan. Roast 20 to 25 minutes or until squash is tender, brushing lightly with water if squash starts to look dry. Cool slightly on a wire rack.\nMeanwhile, in a small bowl toss together pumpkin seeds and ½ teaspoon water; sprinkle with cinnamon. Place pumpkin seeds in a small, shallow baking pan. Roast 5 minutes or until lightly toasted; cool.\nFor dressing, remove 1 teaspoon zest and squeeze 2 tablespoons juice from lemon. In a small bowl whisk together lemon zest and juice, maple syrup, and mustard.\nIn a large bowl combine kale, quinoa, apple, green onions, and roasted squash. Add dressing; toss to coat. Season with salt and pepper. Top with pumpkin seeds.",
            category: "Salad",
            datePublished: "2019-10-22",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/kale-apple-and-quinoa-salad/"
        ),
        Recipe(
            name: "Kale Bruschetta",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/25202/Kale-Bruschetta-WP-670x470-c.jpg",
            description: "We adore this as an appetizer, and so does everyone else. It is always the first empty platter at our holiday party. No one knows it is plant-based; they just know it is so yummy.",
            ingredients: "1 bunch kale\n1 loaf fresh 100% whole-grain bread, sliced\n½ cup Cannellini Bean Sauce\n1 cup grape tomatoes, halved\nbalsamic glaze",
            direction: "Place the kale leaves in a large pot of boiling water. Cover and cook until tender, about 5 minutes. Drain in a colander, then squeeze out any extra liquid with your hands (you don’t want soggy bread).\nToast 8 pieces of bread, and place them on a handsome serving platter.\nSpread a tablespoon of the Cannellini Bean Sauce on the toasted bread, then cover with a layer of kale and top with a scattering of grape tomatoes. Drizzle generously with the balsamic glaze, and grab one for yourself before they all disappear.",
            category: "Appetizer",
            datePublished: "2015-06-28",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/kale-bruschetta/"
        ),
        Recipe(
            name: "Vegetable PotPie",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98816/Vegetable-pot-pie-for-wordpress-670x470-c.jpg",
            description: "This eye-popping potpie makes a hearty addition to a holiday menu or an impressive entree any time of year. Note that this recipe calls for whole wheat pizza dough: Make some using our 10-minute recipe or look for oil-free options at the store (Trader Joe’s makes a good one).",
            ingredients: "3 cups sliced fresh cremini mushrooms\n1 cup sliced carrots\n½ cup sliced celery\n3¼ cups low-sodium vegetable broth\n2 cups ½-inch pieces peeled butternut squash\n1½ cups frozen whole pearl onions\n1 teaspoon chopped fresh thyme\n1 bay leaf\n1 15-oz. can no-salt-added chickpeas, rinsed and drained\n1 cup frozen peas\n1 cup frozen corn\n3 tablespoons all-purpose flour\nSea salt and freshly ground black pepper, to taste\n1 recipe Homemade Oil-Free Pizza Dough or 1 lb. refrigerated whole wheat pizza dough\n1 tablespoon unsweetened plant milk, such as almond, soy, cashew, or rice",
            direction: "Preheat oven to 425°F. For filling, in a 4-qt. saucepan cook mushrooms, carrots, and celery over medium 3 to 4 minutes, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Add 3 cups of the broth, the squash, onions, thyme, and bay leaf. Bring to boiling; reduce heat. Simmer, covered, 5 minutes or until vegetables are nearly tender. Stir in chickpeas, peas, and corn.\nWhisk together flour and the remaining ¼ cup broth; stir into vegetables. Cook until thick and bubbly, stirring occasionally. Remove from heat. Remove and discard bay leaf. Season filling with salt and pepper. Spread into a 2½- to 3-qt. round or oval baking dish.\nOn a lightly floured surface, roll Homemade Oil-Free Pizza Dough into a circle or oval slightly larger than the dish. Cut several slits in dough; place on filling and seal. Brush with milk. Bake 15 minutes or until crust is browned and filling is bubbly.",
            category: "Main",
            datePublished: "2019-11-05",
            url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/vegetable-pot-pie/"
        ),
        Recipe(
            name: "Roasted Buckwheat Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/80904/KIK_Roasted_Buckwheat_Salad_WP-1-360x270-c.jpg",
            description: "Roasted buckwheat, also called kasha, has an earthy, woody flavor that I find very interesting. It makes a nice variation to my grain salads. You can easily change the grain to rice or quinoa and add any mix of herbs you like. This makes a very hearty side dish.",
            ingredients: "½ acorn squash, cut into ½-inch dice\n1 cup roasted buckwheat\n½ onion, cut into ½-inch dice\n1 cup cherry tomatoes, halved\n½ cup cilantro or parsley, finely chopped\n1 cup baby arugula\n1 cup spinach\n½ cup fresh orange juice\n2 tablespoons toasted pumpkin seeds\nFor the Dressing:\nJuice of ½ lemon\n2 tablespoons white wine vinegar\n1 clove garlic, minced\nSea salt and freshly ground black pepper",
            direction: "Steam the squash in a double boiler or steamer basket for 10 minutes, or until tender. Be careful not to overcook. Set aside and let cool.\nPlace the buckwheat and 1¾ cups hot water in a medium saucepan and bring to a boil over high heat. Remove from the heat, cover, and let stand for 10 minutes, until the water is absorbed and the grains are soft but chewy. Drain any excess water. Fluff the grains with a fork and set aside to cool.\nTo make the dressing, combine the lemon juice, vinegar, and garlic in a small bowl. Add salt and pepper to taste.\nIn a large mixing bowl, combine the squash, buckwheat, onions, tomatoes, and cilantro or parsley. Add the dressing and mix well.\nIn another bowl, toss the arugula and spinach in the orange juice. Place the greens on individual salad bowls, and top with the grain mixture. Serve garnished with the pumpkin seeds, either chilled or at room temperature.",
            category: "Salad",
            datePublished: "2015-04-29",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/roasted-buckwheat-salad-recipe/"
        ),
        Recipe(
            name: "Pita Chips with Blueberry-Orange Salsa",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/94404/Pita-Chips-with-Orange-Salsa-Wordpress-360x270-c.jpg",
            description: "This fruity salsa is made with fresh blueberries, navel oranges, and a hint of maple syrup. It’s a perfect snack or party starter with crunchy homemade pita chips.",
            ingredients: "3 whole wheat pita bread rounds\n4 navel oranges, peeled, sectioned, and finely chopped\n4 whole pitted dates, chopped (3 tablespoons)\n½ cup fresh blueberries\n1 teaspoon lemon zest\n1 teaspoon pure maple syrup\n1 dash ground cardamom\n3 tablespoons unsalted pistachio nuts, roasted and chopped",
            direction: "Preheat oven to 400°F. Cut each pita bread into eight wedges. Place wedges in a single layer on a baking sheet. Bake 8 to 10 minutes or until crisp and lightly browned. Cool on a wire rack.\nMeanwhile, in a small bowl stir together the next six ingredients (through cardamom). Serve salsa with pita chips. Top with pistachios.",
            category: "Snack",
            datePublished: "2019-09-05",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/pita-chips-with-blueberry-orange-fruit-salsa/"
        ),
        Recipe(
            name: "Autumn Minestrone",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/22638/Autumn-Minestrone-300kb-360x270-c.jpg",
            description: "Nothing says comfort food like a hearty bowl of soup. Curling up on the couch with a great book or movie and a steaming bowl of this twist on minestrone is heaven on any night of the week. Full of healthy veggies and lots of flavor, this soup eats like a meal!",
            ingredients: "1 medium onion, cut into ½-inch pieces\n2 stalks celery, sliced crosswise into ½-inch pieces\n½ bulb fennel, cut into 1-by-¼-inch pieces (about 1½ cups)\n2 medium Yukon gold potatoes, peeled and cut into 1-inch pieces\n2-3 cloves garlic, finely chopped\n1 can (35 ounces) whole tomatoes, lightly crushed\n8 cups low-sodium vegetable broth\n1 can (15 ounces) cannellini beans, drained and rinsed\nSalt and pepper, to taste\n2 teaspoons red-wine vinegar\n1 zucchini, quartered and sliced\n1½ bunches Swiss chard leaves, thinly sliced (about 6 cups)\n2 cups cooked elbow or fusilli pasta (eggless)\nNutritional yeast or finely ground pumpkin seeds for garnish",
            direction: "Heat enough water that fills the bottom of the pan in an 8-quart stockpot over medium high heat. Add onion, celery, fennel, potatoes, and garlic and cook, stirring occasionally, about 5 minutes.\nAdd tomatoes and their juices, stock, and cannellini beans; season with 2 teaspoons salt and ½ teaspoon pepper. Increase heat to high and bring to a boil. Reduce heat to a simmer, add in the zucchini and cook until potatoes are tender, about 10 minutes.\nStir in vinegar and Swiss chard; season with salt and pepper. Divide pasta evenly between 6 to 8 bowls. Ladle over soup and garnish with nutritional yeast or ground pumpkin seeds. Serve immediately and enjoy!",
            category: "Soup",
            datePublished: "2013-03-18",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/autumn-minestrone-3/"
        )
    ]
}
