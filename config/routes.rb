Rails.application.routes.draw do
  resources :gimgs
  get 'goods/show'
  root 'goods#index'
  resources :goods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
