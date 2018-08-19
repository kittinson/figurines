Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :comments, only: [ :index, :show ]
  root to: 'comments#index'
  # resources :comments, :only [ :show, :edit, :update, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
