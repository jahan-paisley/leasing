Leasing::Application.routes.draw do

  get "etl/import" => "etl#get_import"
  post "etl/import" => "etl#post_import"
  get "etl/export" => "etl#get_export"
  post "etl/export" => "etl#post_export"
  
  resources :correspondents

  resources :kases

  resources :customers

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "customers#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
