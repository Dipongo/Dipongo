Rails.application.routes.draw do
  get 'tips/content'

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :universes, only: [:index, :show]

  get 'sign_up' => "pages#guest_sign_up"
  post 'sign_up' => "pages#create_sign_up"

  resources :stories, only: [:show] do
    resources :solutions, only: [:index, :new, :create]
  end

  mount Attachinary::Engine => "/attachinary"

end
