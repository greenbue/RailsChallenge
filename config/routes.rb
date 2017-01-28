Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', :registrations => "users/registrations"
  }

  resources :expenses
  resources :incomes
  resources :expenses

  resources :users do
    resources :incomes
    resources :expenses
  end
  get 'welcome/index'

  # You can have the root of your site routed with "root"
  root 'welcome#index'
end
