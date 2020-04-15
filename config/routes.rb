Rails.application.routes.draw do
  resources :x_rays
  resources :reports
  resources :paitents
  devise_for :technicians
  devise_for :admins
  devise_for :receptionests
  devise_for :doctors

  

  root to: 'paitents#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
