Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :submits
      resources :tests, param: :uid
      resources :questions
      resources :users
      resources :registrations
      resources :sing_in
    end
  end

  get '*path', to: 'pages#index', via: :all
end
