Rails.application.routes.draw do
  root 'tops#index'
  resources :ingredients, only: [:index, :new, :create]
  resources :menus, only: [:index, :new, :create, :edit, :update] do
    resources :costs, only: [:new, :create]
  end
end
