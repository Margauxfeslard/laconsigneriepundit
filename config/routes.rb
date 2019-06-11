Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :bieres do
      resources :reviews, only: [:new, :create]
    end
      resources :reviews, only: [:show]


    resources :users do
      resources :commandes do
        resources :payments, only: [:new, :create]
        get '/confirmation', to: 'payments#confirmation_commande', as: "confirmation"
        member do
          post '/growlers', to: 'commandes#add_growlers'
          get '/growlers', to: 'commandes#growlers_show'          
        end

        post '/pointcollectes/:id', to: 'pointcollectes#finalize_commande'
        resources :pointcollectes
      end
    end
end
