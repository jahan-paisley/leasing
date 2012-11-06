Leasing::Application.routes.draw do

  resources :correspondents

  resources :guarantors

  resources :guarantees

  resources :properties

  resources :contracts

  resources :kases

  resources :customers

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "customers#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
