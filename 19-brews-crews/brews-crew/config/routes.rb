Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/brews', to: "brews#index"
  # patch '/brews/:id', to: "brews#update"
  resources :brews, only:[:new, :create, :edit, :update]
  get '/brews/strongest', to: "brews#strongest"
  get '/brews/:id', to: "brews#show"

  # get '/purchases', to: "brews#index"
  get '/purchases/:id', to: "purchases#show"
  resources :purchases, only:[:index,:new, :create]
end
