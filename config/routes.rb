Rails.application.routes.draw do
  resources :zeppelins, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[show destroy]

  resources :users, only: [] do
    collection do
      get 'profile', to: 'users#show'
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
