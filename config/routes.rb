Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'


  resources :dashboards, :only =>[:index]

  resources :incomes, :only =>[:index, :new, :create]
  resources :expenditures, :only =>[:index, :new, :create]
  resources :goals, :only =>[:index, :new, :create]
  resources :projections, :only =>[:index, :new, :create]


  root 'static_pages#home'

end
