Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # Defines the root path route ("/")
  # Crée un task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create', as: :task_create
  # updater un task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task_update
  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy
  # Lire les informations d'un task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # root "articles#index"
end
