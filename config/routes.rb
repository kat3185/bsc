Rails.application.routes.draw do
  authenticate :user do
    resources :user_roles
    resources :event_volunteer_slots
    resources :event_volunteers, except: [:update]
    resources :events do
      resources :event_volunteers, only: [:update]
    end
    resources :prices
    resources :roles
    resources :bands
    resources :venues
    resources :user_informations, only: [:index, :show]
    root 'events#index'
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
