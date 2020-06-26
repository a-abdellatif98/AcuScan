# frozen_string_literal: true

Rails.application.routes.draw do
  resources :vists
  resources :x_rays
  resources :reports
  resources :paitents, param: :serialnumber
  devise_for :technicians
  devise_for :admins
  devise_for :receptionests
  devise_for :doctors

  root to: 'paitents#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
