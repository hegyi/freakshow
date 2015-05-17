Rails.application.routes.draw do
  resources :tasks, except: [:show]
  resources :mutants, except: [:show]
  resources :teams, except: [:show]
  root to: 'tasks#index'
end
