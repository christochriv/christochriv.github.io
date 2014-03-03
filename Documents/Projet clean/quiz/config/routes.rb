Quiz::Application.routes.draw do
  resources :questions

  resources :challenges

  devise_for :users
 root :to => "home#index"
end
