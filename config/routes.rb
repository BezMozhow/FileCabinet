Rails.application.routes.draw do
  get 'doc/title:string'
  get 'doc/content:text'
  root 'welcome#index'
end
