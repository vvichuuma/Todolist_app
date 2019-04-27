Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get "/allusers" => "users#index"

  post "/cUser" => "users#create"
  
  post "/update" => "users#update"

  delete "/deleter" => "users#del"

  post "/userTasks" => "users#user_tasks"


  get "/allTasks" => "tasks#index"

  post "/ctask" => "tasks#create"

end