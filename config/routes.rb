Rails.application.routes.draw do
  root 'pages#index'
  get 'main' => 'pages#index'

  resources :users, only: %i[new create]
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  delete 'logout' => 'sessions#destroy'
end
