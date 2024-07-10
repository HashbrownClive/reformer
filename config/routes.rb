Rails.application.routes.draw do
  resources :users, except: [:delete, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
