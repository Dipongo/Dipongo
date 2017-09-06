Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :universes, only: [:index, :show]

  resources :stories, only: [:show] do
    resources :solutions, only: [:index, :new, :create]
  end

end
