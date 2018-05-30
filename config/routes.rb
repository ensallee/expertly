Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :skills
  resources :user_skills
  resources :courses
  resources :categories, only: [:index, :show]

  resources :users, only: [:index, :show, :create, :edit, :update]

  get "home", to: "users#home", as: "home"
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"
  post "logout", to: "sessions#destroy", as: "logout"
  get "users/:id/teacher_edit", to: "users#teacher_edit", as: "teacher_edit"
end
