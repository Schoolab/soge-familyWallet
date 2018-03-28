Rails.application.routes.draw do

  get 'transferts/new'

  devise_for :users
  root to: 'pages#home'

  resources :pages do
      resources :membres do
        get 'addphoto'
        get 'compte'
        get 'profilecreation'
        get 'bravo'
        resources :paiements
        resources :pockets
        resources :transferts
      end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
