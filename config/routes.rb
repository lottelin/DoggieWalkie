Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :dogs

  get '/endpoint', to: "pages#endpoint", as: :endpoint

  get '/map', to: "pages#home", as: :home


  resources :chat_rooms, only: [:show, :create] do
    resources :messages, only: :create
  end




  mount ActionCable.server => "/cable"


end
