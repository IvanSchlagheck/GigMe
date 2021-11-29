Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  get '/dashboard', to: 'dashboards#dashboard'
  get '/bookings/:id/confirm', to: 'bookings#confirm', as: :booking_confirm
  get '/bookings/:id/decline', to: 'bookings#decline', as: :booking_decline
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :venues, only: [ :new, :create, :index, :show ] do
    resources :events, only: [ :create ]
  end
  resources :users, only: [ :index, :show ]
  resources :bookings, only: [ :create, :show ] do
    resources :messages, only: :create
  end
end
