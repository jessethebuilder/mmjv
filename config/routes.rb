Mmjv::Application.routes.draw do
  devise_for :users
  resources :products

  root 'products#index'

end

