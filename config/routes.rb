Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  resources :topics, only: [:index]
  resources :confirmation_questions, only: [:index]
  post 'confirmation_answers/bulk_update', to: 'confirmation_answers#bulk_update'
  resources :questions, only: [:index, :new, :show]
end
