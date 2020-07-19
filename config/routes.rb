# frozen_string_literal: true

Rails.application.routes.draw do
  #resources :vists
  resources :x_rays
  get '/x_rays/:x_ray_id/reports/new', to: 'reports#new'
  post '/x_rays/:x_ray_id/reports/', to: 'reports#create', as: :create_xray_report

  resources :reports

  resources :paitents
  get '/search' => 'paitents#search', :as => 'search_page'
  
  devise_for :technicians
  devise_for :admins
  devise_for :receptionests
  devise_for :doctors

  root to: 'paitents#login'
end
