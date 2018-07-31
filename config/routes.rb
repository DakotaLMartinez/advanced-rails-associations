Rails.application.routes.draw do
  resources :assigned_tickets
  resources :tickets
  resources :units
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
