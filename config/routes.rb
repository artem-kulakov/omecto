# frozen_string_literal: true

Rails.application.routes.draw do
  resources :blogs
  resources :events
  resources :categories, only: [:show]
  resources :participations, only: [:new]
  resources :connections, only: [:new]

  resources :conversations do
    resources :messages
  end

  devise_for :users
  resources :users, only: [:show]

  get 'welcome/index'
  get 'about', to: 'welcome#about'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
