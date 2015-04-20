Rails.application.routes.draw do
  root "movies#index"
  # get 'movies' => 'movies#index'
  # get "movies/:id" => "movies#show", as: "movie"
  # get "movies/:id/edit" =>  "movies#edit", as: "edit_movie"
  # patch "movies/:id" =>  "movies#update"
  resources :movies
end

#'app.movies_url' => "http://www.example.com/movies"', 'app.movies_path' => '/movies' app.movie_edit_path(3) => '/movies/3/edit' 