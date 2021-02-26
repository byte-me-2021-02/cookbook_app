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

  def update
    # combination of the show and the create actions
    # show action
    @recipe = Recipe.find_by(id: 2)
    # update
    @recipe.chef = "Melanie"
    @recipe.ingredients = "Melanie"
    @recipe.directions = "Melanie"
    @recipe.prep_time = "Melanie"
    @recipe.title = "Melanie"
    @recipe.image_url = "Melanie"
    @recipe.save
    render 'show.json.jb'

    # get the id from params, make the recipe dynamic
    # get params from incomnia to update the data
    # add other attributes
  end
end
