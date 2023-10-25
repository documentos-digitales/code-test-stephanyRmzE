Rails.application.routes.draw do
  resources :customers, only: [:new, :create, :show, :update] do
    resources :invoices, only: [:new, :create, :show, :index]
    
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "customers#new"
end
