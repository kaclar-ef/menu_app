Rails.application.routes.draw do
  root 'tops#index'
  resources :ingredients, only: [:index, :new, :create]
  
end
