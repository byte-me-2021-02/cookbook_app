Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # index shows ALL recipes
    get "/recipes" => "recipes#index"
    # show shows ONE recipe
    get "/recipes/:id" => "recipes#show"
  end
end
