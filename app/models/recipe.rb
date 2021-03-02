class Recipe < ApplicationRecord
  def ingredients_list
    # get the ingredients string
    ingredients.split(", ").map {|ingredient| ingredient.capitalize}
    # manipulate it
  end

  def directions_list
    directions.split(", ").map {|direction| direction.capitalize}
  end

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end

  def friendly_prep_time
    # hours
    hours = prep_time / 60
    # minutes
    minutes = prep_time % 60
    # make a sentence
    result = ""
    if hours > 0
      result += "#{hours} hours "
    end
    if minutes > 0
      result += "#{minutes} minutes"
    end
    
    result
    # "#{hours} hours and #{minutes} minutes"
    # return that to the user
  end
end


# recipe.id
# recipe.title
# recipe.ingredients
# ...
# recipe.say_hi