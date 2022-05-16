Rails.application.routes.draw do
  get 'properties/index'
  get 'properties/show/:id', to: "properties#show", as: "property_show"
  post "properties/update/:id", to: "properties#update", as: "property_update"
  post 'properties/create', to: "properties#create", as: "property_create"
  post 'comments/create', to: "comments#create", as: "comment_create"
  delete 'properties/delete/:id', to: "properties#destroy", as: "property_destroy"
  delete 'comments/delete/:id', to: "comments#delete", as: "comment_destroy"
  devise_for :users
  root 'static_pages#index'

  #owners
  post 'properties/new_owner', to: "owners#create", as: "owner_create"
  post 'properties/owner/:id', to: "owners#update", as: "owner_update"
  get 'properties/owner/:id', to: "owners#edit" , as: "owner_edit"
  get 'properties/owner_info/:id', to: "owners#show", as: "owner_show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
