Rails.application.routes.draw do
  root 'welcome#index'

  resources :clientes
  resources :pedidos
  resources :cuadernos
  resources :materials
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
