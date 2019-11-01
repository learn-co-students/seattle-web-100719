Rails.application.routes.draw do
  resources :cats
  resources :dogs
  # get 'author/name:string'

  resources :tags
  resources :recipes
  # get '/dsaldfs;', to: "Recipes#dsaldfs"
  # get '/recipes', to 'Recipes#index'
  # get '/recipes/:id', to "Recipes#show"
  # post '/recipes', to: "Recipes#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
