Rails.application.routes.draw do
  resources :genrekeywords
  resources :yoyakus
  get 'login/index'

  get 'login/logoff'  

  post 'login/auth'

  get 'home/kari'

  resources :mtourokus
  resources :genres
  resources :users
  resources :stourokus
  resources :users do
    member do
      get 'show_image'
    end
  end

  root 'home#kari'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
