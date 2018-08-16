Rails.application.routes.draw do
  root "static_pages#home"

  resources :question_banks
  resources :categories
end
