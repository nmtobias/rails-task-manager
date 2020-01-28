Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 3 - As a user, I can list tasks
  get 'tasks', to: 'tasks#index'

  # 4 - As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # 5 - As a user, I can add a new task (2 requests)
  # 1 to get the empty form
  get 'tasks/new', to: 'tasks#new'
  # 2 to submit the form
  post 'tasks', to: 'tasks#create'
  # 6 - As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit'

  patch 'task/:id', to: 'tasks#update'
  # 7 - As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy'

end
