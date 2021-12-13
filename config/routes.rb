Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :submits
      resources :tests, param: :uid
      resources :questions
      resources :users

    end
  end

  get '*path', to: 'pages#index', via: :all
end
