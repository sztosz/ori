Rails.application.routes.draw do
  get 'dump_table/index'
  get 'dump_table/search'
  post 'dump_table/search'

  root to: 'visitors#index'

  devise_for :users

  resources :brands do
    resources :bodies do
      resources :engines do
        resources :ecus do
          resources :dumps
        end
      end
    end
  end
end
