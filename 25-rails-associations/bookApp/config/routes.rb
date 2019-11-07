Rails.application.routes.draw do
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/books', to: "books#index" #, as: "books"
  # get '/books/:id', to: "books#show"
  resources :books, only: [:index, :show, :new, :create, :edit, :update]
  # delete '/books/:id', to: "books#destroy"

end
