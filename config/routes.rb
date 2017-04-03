Rails.application.routes.draw do
  resources :formal_educations
  resources :language_abilities
  resources :profiles
  devise_for :users
  resources :job_postings
  mount Sidekiq::Web => "/sidekiq" # monitoring console

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
