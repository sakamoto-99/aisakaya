Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sakes#index'
  get "/" => 'sakes#index'
  resources :sakes, only: [:index, :new]
  resources :aisakayas, only: [:index, :new]
end
