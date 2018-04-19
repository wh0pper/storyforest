Rails.application.routes.draw do
  root :to => 'trees#index'
  resources :trees do
    resources :branches
  end


end
