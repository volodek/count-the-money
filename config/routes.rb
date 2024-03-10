Rails.application.routes.draw do
  root "accounts#index"

  resources :accounts


  get "up" => "rails/health#show", as: :rails_health_check
end
