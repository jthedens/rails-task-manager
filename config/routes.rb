Rails.application.routes.draw do
  # get 'tasks/index'
  # get 'tasks/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tasks, only: [:index, :show, :new, :create]

  get    "tasks",          to: "tasks#index"

  get    "tasks/new",      to: "tasks#new"
  post   "tasks",          to: "tasks#create"

  get    "tasks/:id",      to: "tasks#show", as: "task"

  get    "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch  "tasks/:id",      to: "tasks#update"

  delete "tasks/:id",      to: "tasks#destroy"
end
