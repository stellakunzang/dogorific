Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :breeds, only: [:index, :show]
      resources :favorites, only: [:index, :show]
      post 'favorites/add', to: 'favorites#create'
    end
  end
end
