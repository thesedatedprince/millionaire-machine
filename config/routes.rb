Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'

  resources :dashboards
  resources :income
  resources :expenditure

  root 'dashboards#index'

end
