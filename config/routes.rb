Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home' => 'home#show'

  resources :topics do
      resources :entries
    end
end
