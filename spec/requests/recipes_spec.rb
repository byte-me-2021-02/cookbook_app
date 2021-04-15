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
      p recipes
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(1)
    end
  end

  describe "POST /recipes" do
    it "should create a new recipe in the db" do
      # make a web request to rails thata makes a new recipe in the db
      user = User.create!(
        email: "leslie@email.com",
        password: "password"
      )

      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      
      post "/api/recipes", params: {
        chef: "the chef",
        ingredients: "the ingredients",
        directions: "the directions",
        prep_time: "the prep_time",
        image_url: "the image_url",
        title: "the title"       
      },
      headers: {"Authorization" => "Bearer #{jwt}"}
      # parse the response
      recipe = JSON.parse(response.body)
      # p recipe
      # check that the correct data is in the response
      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("the title")
    end
  end
end
