# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :jobs, only: %i[index show edit update]
  end

  namespace :admin do
    resources :dashboard, only: %i[index]
  end


  namespace :requestor do
    resources :jobs, only: %i[index show new create update]
  end

  namespace :requestor do
    resources :dashboard, only: %i[index]
  end


    root to: "home#index"

end
