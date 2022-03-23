Rails.application.routes.draw do
  get 'properties/index'
  get 'properties/show/:id', to: "properties#show", as: "property_show"
  post "properties/update/:id", to: "properties#update", as: "property_update"
  post 'properties/create', to: "properties#create", as: "property_create"
  delete 'properties/delete/:id', to: "properties#destroy", as: "property_destroy"
  devise_for :users
  root 'static_pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
