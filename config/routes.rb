Rails.application.routes.draw do
  resources :event_volunteer_slots
  resources :event_volunteers
  resources :events
  resources :prices
  resources :roles
  resources :bands
  resources :venues
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
