Rails.application.routes.draw do

  devise_for :users
  root 'jobs#index'

  resources :jobs

  get '/completed', to: 'jobs#completed'
end
