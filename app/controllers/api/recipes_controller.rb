class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.json.jb"
  end

  def show
    # accept the params
    # go to the db and get the correct recipe for that param
    p params[:id]
    @recipe = Recipe.find_by(id: params[:id])
    p "@recipe"
    p @recipe
    # send this to the view
    # show that data to the user
    render 'show.json.jb'
  end
end
