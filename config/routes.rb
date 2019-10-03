Rails.application.routes.draw do
  get 'customers', to: 'customer#index'
  get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
