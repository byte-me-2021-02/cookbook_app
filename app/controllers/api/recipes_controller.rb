class Api::RecipesController < ApplicationController
  def index
    # @recipes = Recipe.where("prep_time > ?", 5)
    # @recipes = @recipes.order(:prep_time)

    # if params[:search]
    #   @recipes = Recipe.where("ingredients LIKE ?", "%#{params[:search]}%")
    # else
    #   @recipes = Recipe.all
    # end    

    # @recipes = @recipes.order(:prep_time => :asc)
    if current_user
      @recipes = Recipe.all
    else
      @recipes = []
    end
    p "HERE IS THE CURRENT USER"
    p current_user
    p "THERE WAS THE CURRENT USER"
    render "index.json.jb"
  end


  # recipes create
  # when user adds a recipe, we know who added that recipe
    # have authentication
    # save user inputted info
    # user_id fk on recipes table (MIGRATION)
    # figure out who is logged in and add their id to the recipe that's getting made
  
  
  
  

  def show
    # accept the params
    # go to the db and get the correct recipe for that param
    p params[:id]
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients.split(", ").map {|ingredient| ingredient.capitalize}
    # send this to the view
    # show that data to the user
    render 'show.json.jb'
  end

  def create
    # make a new recipe in the db
    p "current_user"
    p current_user.id
    p "current_user"
    @recipe = Recipe.new(
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      title: params[:title],
      user_id: current_user.id
    )
    if @recipe.save
      render 'show.json.jb'
    else
      render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    # combination of the show and the create actions
    # show action
    @recipe = Recipe.find_by(id: params[:id])
    # update
    @recipe.chef = params[:chef] || @recipe.chef 
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.title = params[:title] || @recipe.title
    @recipe.image_url = params[:image_url] || @recipe.image_url
    @recipe.save
    render 'show.json.jb'

    # get the id from params, make the recipe dynamic
    # get params from incomnia to update the data
    # add other attributes
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: {message: "you deleted the recipe"}
  end

  def random
    @recipe = Recipe.find(Recipe.pluck(:id).sample)
    render 'show.json.jb'
  end
end
