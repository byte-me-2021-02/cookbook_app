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
    @recipe = Recipe.new(
      chef: "brian",
      ingredients: "newest oreooooooos",
      directions: "throw oreos against the wall",
      prep_time: 20,
      image_url: "https://i.pinimg.com/originals/1d/2f/b5/1d2fb589da449f288f7e77f2104d617d.jpg",
      title: "oreo casserole"
    )
    @recipe.save
    render 'show.json.jb'
  end
end
