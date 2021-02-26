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

  def create
    # make a new recipe in the db
    p 
    @recipe = Recipe.new(
      chef: params[:the_chef],
      ingredients: params[:the_ingredients],
      directions: params[:the_directions],
      prep_time: params[:the_prep_time],
      image_url: params[:the_image_url],
      title: params[:the_title],
    )
    @recipe.save
    render 'show.json.jb'
  end
end
