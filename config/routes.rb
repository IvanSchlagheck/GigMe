Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboards#dashboard'
  get '/bookings/:id/confirm', to: 'bookings#confirm', as: :booking_confirm
  get '/bookings/:id/decline', to: 'bookings#decline', as: :booking_decline
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :venues, only: [ :index, :show ]
  resources :users, only: [ :index, :show ]
  resources :bookings, only: [ :create, :show ]
end
