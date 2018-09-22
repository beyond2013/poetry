Rails.application.routes.draw do
  resources :couplets
  resources :poets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'couplets#index'
end
