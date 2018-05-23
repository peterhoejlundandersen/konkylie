Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :podcasts, only: [:new, :edit, :delete, :create, :index]

  root 'home#index'

end
