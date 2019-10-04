Rails.application.routes.draw do
  
  resources :checkin, only: %i[index show]
  # get 'checkins', to: 'checkin#index'
  # get 'checkins/:id', to: 'checkin#show'

  resources :customer, only: %i[index show]
  # get 'customers', to: 'customer#index'
  # get 'customers/:id', to: 'customer#show'

  resources :about, only: :index

  # get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'checkin#index'
end
