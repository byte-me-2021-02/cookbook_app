class Api::RecipesController < ApplicationController
  def my_recipe
    # get some data from the db
    @recipe = Recipe.second
    render 'single_recipe.json.jb'
  end
end
