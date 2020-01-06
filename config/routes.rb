Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :tasks

  get	'users/auth/google_oauth2/callback', to: 'users#google_oauth2'

  root 'tasks#new'
end
