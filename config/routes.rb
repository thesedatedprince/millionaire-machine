Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'

  resources :dashboards
  resources :income
  resources :expenditure
  resources :goal

  root 'dashboards#index'

end
