Rails.application.routes.draw do
  get 'checkins', to: 'checkin#index'
  get 'customers', to: 'customer#index'
  get 'customers/:id', to: 'customer#show'
  get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
