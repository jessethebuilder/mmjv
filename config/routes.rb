Mmjv::Application.routes.draw do
  #resources :suppliers do
  #  resources :products
  #end

  #resources :product_types do
  #  resources :products
  #end
  #resources :product_types
  resources :products do
    #collection do
    #  get 'product_type'
    #end
  end

  resources :product_types

  devise_for :users


  resources :imgs, :only => [:destroy]



  root 'products#index'

end

