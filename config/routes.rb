Rails.application.routes.draw do
<<<<<<< HEAD
  resources :yoyakus
=======
  get 'login/index'

  post 'login/auth'

  get 'home/kari'

>>>>>>> 8759e5f2277f0b1d2b96ec3001f3c1a4d028cf06
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
