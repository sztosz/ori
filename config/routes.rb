Rails.application.routes.draw do
  root to: 'visitors#index'

  devise_for :users

  resources :brands do
    resources :bodies do
      resources :engines
    end
  end
end
