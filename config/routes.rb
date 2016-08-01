Rails.application.routes.draw do

  resources :documents
  root to: "homes#show"
  resources :homes
  resources :patients
  resources :doctors
  resource :session

  get 'signup' => 'users#new'
  resources :users
end

