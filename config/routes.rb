Rails.application.routes.draw do

  # Ministries end point
  resources :ministries, only: [:index]


  # Forms end point
  resources :question_sheets
  get '/mpd_def/:id', to: 'question_sheets#show'
  get '/mpd_def', to: 'question_sheets#index'


  # Budgets end point
  resources :budgets
  get '/mpd_budget', to: 'budgets#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
