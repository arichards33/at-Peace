Rails.application.routes.draw do

root 'intros#index'
get "/intros/about" => "intros#about"
get "/intros/index" => "intros#index"

resources :art
resources :designs
resources :music
resources :fashions
resources :users
resources :inspirations

get "/sessions/new" => 'sessions#new'
post "/sessions" => 'sessions#create'
get "/logout" => 'sessions#destroy'

# get "/users" => "users#index"
# get "/users/new" => 'users#new'
# post "/users" => 'users#create'
# get "/users/:id" => 'users#show'
# delete "/users/:id" => 'users#destroy'
# get "/users/:id/edit" => 'users#edit'
# patch "/users/:id" => 'users#update'
#
# get "/inspirations" => "inspirations#index"
# get "/inspirations/new" => 'inspirations#new'
# post "/inspirations" => 'inspirations#create'
# delete "/inspirations/:id" => 'inspirations#destroy'
# get "/inspirations/:id/edit" => 'inspirations#edit'
# patch "/inspirations/:id" => 'inspirations#update'


end
