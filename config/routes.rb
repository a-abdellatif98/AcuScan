# frozen_string_literal: true

Rails.application.routes.draw do
  #resources :vists
  resources :x_rays
  get '/x_rays/:x_ray_id/reports/new', to: 'reports#new'
  post '/x_rays/:x_ray_id/reports/', to: 'reports#create', as: :create_xray_report
  resources :reports
  resources :paitents
  devise_for :technicians
  devise_for :admins
  devise_for :receptionests
  devise_for :doctors

  root to: 'paitents#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
