Rails.application.routes.draw do
  root 'time_logs#index'
  # get '/time_logs', to: 'time_logs#index'

  resources :time_logs
end
