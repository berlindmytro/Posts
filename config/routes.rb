# frozen_string_literal: true

Rails.application.routes.draw do
  get "/articles", to: "articles#index"

  root 'todos#index', as: 'home'
  get 'todos' => 'pages#todopage', as: 'todos'
  resources :todos
  resources :pages
end

Rails.application.routes.draw do
  get "/posts", to: "posts#index"
end
