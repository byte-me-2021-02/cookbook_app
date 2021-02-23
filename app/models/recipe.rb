# chef
# ingredients
# directions
# prep_time
# image_url

class Recipe
  attr_accessor :chef, :ingredients, :directions, :prep_time, :image_url
  
  def initialize(input_options)
    @chef = input_options[:chef]
    @directions = input_options[:directions]
    @ingredients = input_options[:ingredients]
    @prep_time = input_options[:prep_time]
    @image_url = input_options[:image_url]
  end
end