Rails.application.routes.draw do
  root 'welcome#index'

  resources :docs

  get "sing_up", to: "users#new"
  post "sing_up", to: "users#create"

  resources :users, only: [:show]



end
