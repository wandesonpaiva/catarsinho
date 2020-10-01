Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :donations, only: [:new, :create]
  end

  root 'projects#index'
end
