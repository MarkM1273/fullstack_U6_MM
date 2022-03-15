Rails.application.routes.draw do
  get '/customers/alphabetized', to: "customers#alphabetized"
  get '/customers/missing_email', to: "customers#missing_email"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "customers#index"
end
