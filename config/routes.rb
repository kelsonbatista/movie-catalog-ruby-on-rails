Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'home#index'
  resources :movies do
    patch :publish, on: :member # a rota customizada é um membro de recipes
    patch :release, on: :member # a rota customizada é um membro de recipes
  end
  resources :genres
  resources :directors
end
