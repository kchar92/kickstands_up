Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #rides
    get "/rides" => "rides#index"
    post "/rides" => "rides#create"
    get "/rides/:id" => "rides#show"
    patch "/rides/:id" => "rides#update"
    delete "/rides/:id" => "rides#destroy"

    #users
    post "/users" => "users#create"

    #sessions
    post "/sessions" => "sessions#create"

    #ride_users
    post "/ride_users" => "ride_users#create"
    # delete "/ride_users/:id" => "ride_users#destroy"

    #stations
    get "/stations" => "stations#index"
  end
end
