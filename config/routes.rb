Rails.application.routes.draw do
  resources :tarefas
  root "tarefas#index"
resources :users, path: 'usuarios', path_names: { new: "novo", edit: "editar" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
