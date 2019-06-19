Rails.application.routes.draw do

  # get 'achievements/index'
  # get 'achievements/show'
  # get 'achievements/new'
  # get 'achievements/edit'
  # root to: "homes#index"

 resources :homes
 resources :achievements
 devise_for :users
#  get "/home", to:"home#index"
root "homes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
