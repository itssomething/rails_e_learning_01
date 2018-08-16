Rails.application.routes.draw do
  root "static_pages#home"

  resources :question_banks
  resources :categories
  resources :exams
  resources :lessons
end
