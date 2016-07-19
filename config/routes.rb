Rails.application.routes.draw do

  # MInistries end point
  resources :ministries

  # Forms end point
  resources :forms

  # Budgets end point
  resources :budgets
  get '/mpd_budget', to: 'budgets#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
