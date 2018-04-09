Rails.application.routes.draw do


  get 'transferts/new'

  devise_for :users
  root to: 'pages#home'

  resources :pages do
    get 'compte'
    resources :services
      resources :membres do
        get 'addphoto'
        get 'bravo'
        get 'profilecreation'
        get 'compoteste'
        resources :paiements
        resources :pockets
        resources :transferts
      end
  end
  resources :kids do
    resources :pay4mes
    resources :ask_for_dollars
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
