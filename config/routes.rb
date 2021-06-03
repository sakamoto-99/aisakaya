Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sakes#index'
  # root to: 'sakes#new'
  resources :sakes, only: [:index, :new, :create]
  resources :aisakayas, only: [:new]
end
