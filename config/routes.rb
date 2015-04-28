Rails.application.routes.draw do
  resources :poole_app_forms

  devise_for :users

  root to: 'home#index'
end
