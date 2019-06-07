Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :bieres
    resources :growlers
    # post '/commandes/:command_id/additem/:item_id', to: 'commandes#additem', as: :additem
    resources :commandes



end
