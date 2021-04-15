require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "should return all the recipes in the db" do      
      user = User.create!(
        email: "brian@email.com",
        password: "password"
      )
      
      Recipe.create!(
        chef: "the chef",
        ingredients: "the ingredients",
        directions: "the directions",
        prep_time: 4,
        image_url: "the image_url",
        title: "the title",  
        user_id: user.id      
      )
      
      get "/api/recipes"
      recipes = JSON.parse(response.body)      
      
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(1)
    end
  end
end
