Rails.application.routes.draw do
  devise_for :users
  resources :vehicles, path: '/admin/vehicles'

  namespace :api do
    resources :vehicles
  end

  root to: "vehicles#index"
  #get 'vehicle/index'
end
