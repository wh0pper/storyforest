Rails.application.routes.draw do
  devise_for :users




  root :to => 'trees#index'
  resources :trees do
    resources :branches
  end


end
