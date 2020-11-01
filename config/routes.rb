Rails.application.routes.draw do
  resources :missions
  resources :scientists
  resources :planets
  get '/about', to: 'about#index', as: 'about_path'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
