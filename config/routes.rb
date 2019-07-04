Rails.application.routes.draw do
  resources :events
  devise_for :users
  get 'welcome/index'
  get 'about', to: 'welcome#about'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
