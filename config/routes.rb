Rails.application.routes.draw do
  resources :mtourokus
  resources :genres
  resources :users
  resources :stourokus
  resources :users do
    member do
      get 'show_image'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
