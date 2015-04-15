Rails.application.routes.draw do
  root "movies#index"
  get 'movies' => 'movies#index' 
  get "movies/:id" => "movies#show", as: "movie"
  get "movies/:id/edit" =>  "movies#edit", as: "movie_edit"
end
