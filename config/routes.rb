Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html  
  
  resources :users, only: [:show]
  get 'schedules/index' => 'schedules#index'
  get 'schedules/link' => 'schedules#link'
  resources :tweets do
    resources :comments, only: [:create]
  end

  resources :notifications, only: :index

  root 'schedules#index'
end
