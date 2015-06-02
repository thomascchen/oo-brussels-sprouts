class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def ingredients
    ingredients = String.new

    @ingredients.each do |ingredient|
      ingredients += ingredient.summary + "\n"
    end

    ingredients
  end

  def instructions
    instructions = String.new

    @instructions.each_with_index do |instruction, index|
      instructions += (index + 1).to_s + ". " + instruction + "\n"
    end

    instructions
  end

  def summary
<<-SUMMARY
#{@name}

#{ingredients}
#{instructions}
SUMMARY
  end
end

recipes = [
  Recipe.new("Roasted Brussels Sprouts", [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
    ], [
        "Preheat oven to 400 degrees F.",
        "Cut off the brown ends of the Brussels sprouts.",
        "Pull off any yellow outer leaves.",
        "Mix them in a bowl with the olive oil, salt and pepper.",
        "Pour them on a sheet pan and roast for 35 to 40 minutes.",
        "They should be until crisp on the outside and tender on the inside.",
        "Shake the pan from time to time to brown the sprouts evenly.",
        "Sprinkle with more kosher salt ( I like these salty like French fries).",
        "Serve and enjoy!"
      ]),
  Recipe.new("Snickerdoodles (vegan + gluten-free)", [
    Ingredient.new(0.5, "tablespoon", "ground flax seed"),
    Ingredient.new(1.5, "tablespoons", "water"),
    Ingredient.new(0.33, "cup", "cane sugar"),
    Ingredient.new(0.25, "cup", "virgin coconut oil, melted"),
    Ingredient.new(1, "teaspoon", "pure vanilla extract"),
    Ingredient.new(0.5, "tablespoon", "almond milk (optional, see directions)"),
    Ingredient.new(0.5, "cup", "gluten-free oat flour"),
    Ingredient.new(0.25, "cup", "almond flour (not almond meal)"),
    Ingredient.new(0.25, "cup", "sorghum flour"),
    Ingredient.new(2.5, "tablespoons", "arrowroot powder"),
    Ingredient.new(0.5, "teaspoon", "baking soda"),
    Ingredient.new(0.25, "teaspoon", "cream of tartar"),
    Ingredient.new(0.25, "teaspoon", "fine grain sea salt"),
    Ingredient.new(1, "teaspoon", "cinnamon")
  ], [
      "Preheat oven to 375F and line a baking sheet with parchment paper. In a small bowl or mug, mix the flax and water to make the flax egg. Set aside.",
      "In a medium sized bowl stir together the sugar, melted coconut oil, and vanilla until incorporated. Add in the flax egg and stir until combined.",
      "In another bowl, whisk the dry ingredients together (oat flour, almond flour, sorghum flour, arrowroot powder, baking soda, cream of tartar, salt, and pinch of cinnamon). Add the wet mixture to the dry mixture and stir well. The dough will be very dry at first, but it will come together if you get in there with your hands and knead it a few times. Add the optional almond milk if your dough is too dry. You need to be able to form balls of the dough without it cracking, but you don't want it super wet either (or it will spread out too much when baking).",
      "Mix the cinnamon and sugar together in a small bowl. Take about 1.5 tablespoons of dough and roll into a ball. Roll in cinnamon sugar and place on baking sheet at least a couple inches apart. Repeat for the rest.",
      "Bake for 10-11 minutes. (I baked for 10 minutes and the edges were slightly crispy after cooling.) For a soft cookie, bake less time. For a crispy cookie bake longer. Cool for about 3 minutes on the baking sheet and then transfer to a cooling rack until completely cool.",
    ]),
]

recipes.each do |recipe|
  puts recipe.summary
end
