Rails.application.routes.draw do
  root 'time_logs#index'

  resources :time_logs
end
