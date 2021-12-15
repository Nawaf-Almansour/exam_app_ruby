Rails.application.routes.draw do
  get 'spa/index'
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :submits
      resources :tests
      resources :questions
      resources :users
      resources :registrations, only: [:create]
      resources :sessions, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
    end
  end

  get '*path', to: 'pages#index', via: :all
end
