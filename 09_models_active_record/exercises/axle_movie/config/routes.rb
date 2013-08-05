AxleMovie::Application.routes.draw do

  devise_for :users
  
  root 'movies#index' 

  resources :movies

  post '/movies/search' => 'movies#search', :as => :search 


# Prefix       Verb   URI Pattern                Controller#Action
# search       POST   /movies/search(.:format)   movies#search

# Prefix       Verb   URI Pattern                Controller#Action

# movies       GET    /movies(.:format)          movies#index
#              POST   /movies(.:format)          movies#create

# new_student  GET    /movies/new(.:format)      movies#new

# edit_movie GET    /movies/:id/edit(.:format) movies#edit

# movie        GET    /movies/:id(.:format)      movies#show
#              PATCH  /movies/:id(.:format)      movies#update
#              PUT    /movies/:id(.:format)      movies#update
#              DELETE /movies/:id(.:format)      movies#destroy



end
