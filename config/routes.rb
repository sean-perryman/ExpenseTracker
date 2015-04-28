Rails.application.routes.draw do
  resources :expenses, :users

  namespace :api do
  	resources :expenses
  end

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out
  
  root "home#index"
end
