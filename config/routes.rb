Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  root 'messages#index'

  resources :messages, only: [:create, :destroy, :index, :new]
end
