Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/rides" => "rides#index"
    post "/rides" => "rides#create"
    get "/rides/:id" => "rides#show"
  end
end
