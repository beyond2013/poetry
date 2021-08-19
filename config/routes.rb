Rails.application.routes.draw do
 # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  get 'welcome/index'

  resources :couplets
  resources :poets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'welcome#index'
end
